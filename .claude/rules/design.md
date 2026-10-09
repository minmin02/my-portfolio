---
paths:
  - "src/styles/**"
  - "src/components/ui/**"
  - "docs/design-system.md"
---

# 디자인 규칙
- 토큰 정의는 global.css에만 둔다. 컴포넌트는 토큰만 참조한다.
- 변형은 props로 처리하고 섹션 전용 스타일을 ui에 넣지 않는다.
- 한글은 `word-break: keep-all`, 넉넉한 행간.
- 라이트·다크 둘 다 정의한다.
- 토큰·컴포넌트를 바꾸면 docs/design-system.md도 같이 고친다.
