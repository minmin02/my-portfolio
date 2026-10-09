#!/bin/bash
INPUT=$(cat)

# stop_hook_active 확인 (무한 반복 방지)
HOOK_ACTIVE=$(printf '%s' "$INPUT" | node -e "
var chunks = [];
process.stdin.on('data', function(c) { chunks.push(c.toString()); });
process.stdin.on('end', function() {
  try {
    var d = JSON.parse(chunks.join(''));
    process.stdout.write(d.stop_hook_active ? 'true' : 'false');
  } catch(e) {
    process.stdout.write('false');
  }
});
" 2>/dev/null)

if [ "$HOOK_ACTIVE" = "true" ]; then
  echo "stop-build-check: stop_hook_active=true, 빌드를 건너뜁니다." >&2
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR" || exit 0

# package.json 없으면 건너뜀 (Astro 설정 전)
if [ ! -f "package.json" ]; then
  exit 0
fi

# 관련 파일 변경 없으면 건너뜀
CHANGED=$(git status --porcelain -- src astro.config.mjs package.json 2>/dev/null)
if [ -z "$CHANGED" ]; then
  exit 0
fi

# 빌드 실행
BUILD_OUTPUT=$(npm run build 2>&1)
BUILD_EXIT=$?

if [ $BUILD_EXIT -ne 0 ]; then
  echo "빌드 실패. 원인을 확인하고 수정하세요:" >&2
  echo "$BUILD_OUTPUT" | tail -40 >&2
  exit 2
fi

exit 0
