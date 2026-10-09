#!/bin/bash
cd "$CLAUDE_PROJECT_DIR" || exit 0

BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown")
echo "=== 세션 시작: 브랜치 $BRANCH ==="
echo ""

echo "--- git status ---"
git status --short 2>/dev/null | head -20
echo ""

echo "--- 최근 커밋 5개 ---"
git log --oneline -5 2>/dev/null
echo ""

BRANCH_SAFE=$(echo "$BRANCH" | tr '/' '-')
HANDOFF="$CLAUDE_PROJECT_DIR/notes/handoff/${BRANCH_SAFE}.md"
if [ -f "$HANDOFF" ]; then
  echo "--- 인수인계 ---"
  head -40 "$HANDOFF"
fi
