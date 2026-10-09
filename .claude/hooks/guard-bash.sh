#!/bin/bash
INPUT=$(cat)
COMMAND=$(printf '%s' "$INPUT" | node -e "
var chunks = [];
process.stdin.on('data', function(c) { chunks.push(c.toString()); });
process.stdin.on('end', function() {
  try {
    var d = JSON.parse(chunks.join(''));
    var cmd = (d.tool_input && d.tool_input.command) ? d.tool_input.command : '';
    process.stdout.write(cmd);
  } catch(e) {
    process.stdout.write('');
  }
});
" 2>/dev/null)

# 파싱 실패 시 통과
if [ -z "$COMMAND" ]; then
  exit 0
fi

# 1. 강제 push 차단 (push + --force/-f/--force-with-lease)
if echo "$COMMAND" | grep -q "push"; then
  if echo "$COMMAND" | grep -qE -- "(--force|--force-with-lease| -f$| -f )"; then
    echo "강제 push가 차단됐습니다. 일반 git push를 사용하세요. 꼭 필요하다면 PM에게 확인하세요." >&2
    exit 2
  fi
fi

# 2. git reset --hard 차단
if echo "$COMMAND" | grep -q "reset" && echo "$COMMAND" | grep -q -- "--hard"; then
  echo "git reset --hard가 차단됐습니다. 되돌리려면 git revert를 사용하거나 PM에게 확인하세요." >&2
  exit 2
fi

# 3. rm -rf 차단 (node_modules, dist, .astro는 허용)
if echo "$COMMAND" | grep -qE "rm\s+.*(-rf|-fr|-r.*-f|-f.*-r)\s"; then
  if ! echo "$COMMAND" | grep -qE "(node_modules|/dist|/\.astro)"; then
    echo "rm -rf가 차단됐습니다. node_modules, dist, .astro 외 경로는 삭제할 수 없습니다." >&2
    exit 2
  fi
fi

# 4. sudo 차단
if echo "$COMMAND" | grep -qE "^\s*sudo\s"; then
  echo "sudo가 차단됐습니다. sudo 없이 실행하거나 PM에게 확인하세요." >&2
  exit 2
fi

# 5. curl/wget 파이프 sh 차단
if echo "$COMMAND" | grep -qE "(curl|wget).+\|\s*(ba)?sh"; then
  echo "curl/wget을 sh에 파이프하는 명령이 차단됐습니다. 스크립트를 먼저 다운받아 확인 후 실행하세요." >&2
  exit 2
fi

# 6. .env 파일 쓰기 리다이렉트 차단
if echo "$COMMAND" | grep -qE ">+\s*\.env(\.[a-zA-Z]+)?(\s|$)"; then
  echo ".env 파일 쓰기가 차단됐습니다. 비밀값은 파일에 넣지 않고 환경 변수로 관리하세요." >&2
  exit 2
fi

exit 0
