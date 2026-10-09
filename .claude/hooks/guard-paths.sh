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

# 파싱 실패 시 통과
if [ -z "$FILE_PATH" ]; then
  exit 0
fi

# docs/source.md 보호
if echo "$FILE_PATH" | grep -q "docs/source\.md"; then
  echo "docs/source.md는 PM만 수정합니다. 수정이 필요하면 notes/<내 역할>.md에 요청을 적으세요." >&2
  exit 2
fi

# .env 파일 보호
if echo "$FILE_PATH" | grep -qE "(^|/)\.env(\.[a-zA-Z]+)?$"; then
  echo ".env 파일은 수정할 수 없습니다. 비밀값은 환경 변수로 관리하세요." >&2
  exit 2
fi

# .git/ 내부 보호
if echo "$FILE_PATH" | grep -q "/\.git/"; then
  echo ".git/ 내부 파일은 직접 수정할 수 없습니다." >&2
  exit 2
fi

exit 0
