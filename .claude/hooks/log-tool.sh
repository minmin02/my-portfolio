#!/bin/bash
INPUT=$(cat)
LOG_DIR="$CLAUDE_PROJECT_DIR/.claude/logs"
LOG_FILE="$LOG_DIR/tool-use.jsonl"
mkdir -p "$LOG_DIR" 2>/dev/null

export TS=$(date -u +"%Y-%m-%dT%H:%M:%SZ" 2>/dev/null || date +"%Y-%m-%dT%H:%M:%SZ")
export BR=$(git -C "$CLAUDE_PROJECT_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown")

LOG_ENTRY=$(printf '%s' "$INPUT" | node -e "
var chunks = [];
process.stdin.on('data', function(c) { chunks.push(c.toString()); });
process.stdin.on('end', function() {
  try {
    var d = JSON.parse(chunks.join(''));
    var entry = {
      ts: process.env.TS,
      branch: process.env.BR,
      tool: d.tool_name || '',
      detail: ''
    };
    if (d.tool_name === 'Bash' && d.tool_input && d.tool_input.command) {
      entry.detail = d.tool_input.command.slice(0, 200);
    } else if ((d.tool_name === 'Edit' || d.tool_name === 'Write') && d.tool_input && d.tool_input.file_path) {
      entry.detail = d.tool_input.file_path;
    }
    process.stdout.write(JSON.stringify(entry));
  } catch(e) {}
});
" 2>/dev/null)

if [ -n "$LOG_ENTRY" ]; then
  echo "$LOG_ENTRY" >> "$LOG_FILE" 2>/dev/null
fi

exit 0
