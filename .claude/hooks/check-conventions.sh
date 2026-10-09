#!/bin/bash
INPUT=$(cat)
FILE_PATH=$(printf '%s' "$INPUT" | node -e "
var chunks = [];
process.stdin.on('data', function(c) { chunks.push(c.toString()); });
process.stdin.on('end', function() {
  try {
    var d = JSON.parse(chunks.join(''));
    var fp = (d.tool_input && d.tool_input.file_path) ? d.tool_input.file_path : '';
    process.stdout.write(fp);
  } catch(e) {
    process.stdout.write('');
  }
});
" 2>/dev/null)

# src/ 파일만 검사
case "$FILE_PATH" in
  *src/*) ;;
  *) exit 0 ;;
esac

# 실제 파일 경로 결정
if [ -f "$FILE_PATH" ]; then
  FULL_PATH="$FILE_PATH"
elif [ -f "$CLAUDE_PROJECT_DIR/$FILE_PATH" ]; then
  FULL_PATH="$CLAUDE_PROJECT_DIR/$FILE_PATH"
else
  exit 0
fi

ERRORS=""

# 검사 1: global.css 외 src/ 파일에서 hex 색상 직접 사용
case "$FILE_PATH" in
  *src/styles/global.css) ;;
  *)
    if grep -qE "#[0-9a-fA-F]{3,8}" "$FULL_PATH" 2>/dev/null; then
      LINES=$(grep -nE "#[0-9a-fA-F]{3,8}" "$FULL_PATH" 2>/dev/null | head -5)
      ERRORS="${ERRORS}[색상 위반] global.css 토큰 외 hex 색상 사용 — global.css의 CSS 변수를 쓰세요:\n${LINES}\n\n"
    fi
    ;;
esac

# 검사 2: 섹션·페이지·레이아웃에서 BASE_URL 없는 절대 경로
case "$FILE_PATH" in
  *src/components/sections/*|*src/pages/*|*src/layouts/*)
    if grep -qE '(href|src)="/' "$FULL_PATH" 2>/dev/null; then
      LINES=$(grep -nE '(href|src)="/' "$FULL_PATH" 2>/dev/null | head -5)
      ERRORS="${ERRORS}[경로 위반] BASE_URL 없이 절대 경로 사용 — import.meta.env.BASE_URL을 앞에 붙이세요:\n${LINES}\n\n"
    fi
    ;;
esac

if [ -n "$ERRORS" ]; then
  printf '%s' "$ERRORS" >&2
  exit 2
fi

exit 0
