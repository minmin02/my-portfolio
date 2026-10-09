---
name: p1-content
description: 콘텐츠팀 — docs/source.md 내용을 src/content와 src/data로 구조화
disable-model-invocation: true
---

AGENTS.md와 docs/source.md를 읽어. 너는 콘텐츠팀이야.
docs/source.md 내용을 옮겨 줘:
- src/content/projects/*.md: 프로젝트당 1개. order는 질문 하나로 끝내는 대학 생활, NECT, MoodTrip, 오늘 뭐 먹지? 순
- src/data/profile.ts: 이름, 한 줄 소개, 연락처(이메일, GitHub, Velog), 경력, 기술(분야별), 학력, 자격증, 수상, 교육, 블로그 글 링크
규칙: 문장은 바꾸지 말고 형식만 맞춰. TODO는 그대로. 원본에 없는 내용 추가 금지.
마지막에 프론트팀용 docs/content-guide.md 작성: profile.ts 필드와 타입, 프로젝트 frontmatter 필드, 섹션별로 쓸 데이터, 남은 TODO 목록. 프론트팀은 docs/source.md를 읽지 않고 이 문서와 데이터만 볼 거야.
npm run build 통과 확인.
끝나면 /handoff를 실행해 인수인계 파일을 갱신해.
