---
name: p2-frontend
description: 프론트팀 — 담당 섹션 구현 (섹션 이름을 인자로 전달)
disable-model-invocation: true
argument-hint: [담당 섹션 이름들]
---

AGENTS.md, docs/design-system.md, docs/content-guide.md 세 문서만 읽어. docs/source.md는 읽지 마. 너는 프론트팀이야.
담당: $ARGUMENTS
1. design-system.md 규칙대로 global.css 토큰과 components/ui 컴포넌트만 써서 담당 섹션 완성
2. 내용은 src/content, src/data에서만. TODO 값은 화면에 안 보이게
3. 내부 링크·이미지에 import.meta.env.BASE_URL
4. 스크롤 시 부드럽게 나타나는 CSS 애니메이션, 과하지 않게, prefers-reduced-motion 지키기
5. 360/768/1440px, 라이트·다크에서 깨지지 않게
6. 담당 파일 외 수정 금지, 필요하면 notes/에 요청
끝나면 /handoff를 실행해 인수인계 파일을 갱신해.
