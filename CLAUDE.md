@AGENTS.md

# Claude Code 전용
- 단계 작업은 슬래시 명령으로 시작한다: /p0-architect, /p1-design-a, /p1-design-b, /p1-content, /p1-devops, /p2-frontend, /p3-qa, /p3-review, /p3-fix
- 세션 시작 시 훅이 보여주는 인수인계(notes/handoff/<브랜치>.md)를 먼저 확인하고 이어서 일한다.
- 작업을 마치기 전에 /handoff로 인수인계 파일을 갱신한다.
- 빌드 확인은 Stop 훅이 자동으로 한다. 실패 메시지가 오면 원인을 고친다.
- 훅이 규칙 위반을 알려 주면 그 피드백대로 고친다.
- git 명령은 작업 폴더에서 바로 실행하고 `git -C` 옵션은 쓰지 않는다. (권한 규칙이 -C 형태를 인식하지 못한다)
- 독립 검증이 필요하면 /verify를 쓴다.
