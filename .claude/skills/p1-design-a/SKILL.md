---
name: p1-design-a
description: 디자인팀 A — 미니멀 다크 콘셉트로 디자인 시스템과 Hero 섹션 구현
disable-model-invocation: true
argument-hint: [참고 사이트 URL들]
---

AGENTS.md와 docs/source.md(Hero에 쓸 이름·한 줄 소개·링크만)를 읽어. 너는 디자인팀 A야.
콘셉트: 거의 검은 배경, 포인트 색 하나, 넓은 여백, 큰 타이포그래피의 미니멀 다크. 라이트 모드도 같은 톤.
참고 사이트: $ARGUMENTS

1. global.css에 색, 글자 크기, 간격, 모서리, 그림자 토큰 (라이트·다크)
2. components/ui에 Button, Card, Tag, SectionTitle
3. Hero 섹션 하나만 완성해서 전체 느낌을 보여 줘
4. 한글은 word-break: keep-all, 넉넉한 행간
5. 템플릿처럼 보이지 않게, 참고 사이트 분위기를 살리되 베끼지 마
6. 프론트팀이 이 문서만 보고 나머지 섹션을 만들 수 있게 docs/design-system.md 작성: 토큰과 쓰임새, 컴포넌트 사용 예시, 섹션 간격·레이아웃 규칙, 해야 할 것·하지 말 것
끝나면 /handoff를 실행해 인수인계 파일을 갱신해.
