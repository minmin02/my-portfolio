# 작업 규칙

## 프로젝트
- 정적 포트폴리오 사이트. Astro + Tailwind CSS + TypeScript. SSR은 쓰지 않는다.
- 사이트 언어는 한국어. 문구는 docs/source.md 표현을 그대로 쓴다.
- 사이트는 /my-portfolio 경로 아래에서 서비스된다. 내부 링크·이미지·파일 경로는 import.meta.env.BASE_URL을 붙인다.

## 파일 담당 (자기 담당 파일만 수정)
- PM(사람): docs/source.md
- 리드: AGENTS.md, CLAUDE.md, src/layouts/, src/pages/index.astro
- 디자인: src/styles/, src/components/ui/, docs/design-system.md
- 콘텐츠: src/content/, src/data/, docs/content-guide.md
- 프론트: src/components/sections/, src/pages/projects/
- DevOps: .github/, public/, astro.config.mjs의 배포 설정
- 다른 담당 파일이 필요하면 notes/<내 역할>.md에 요청을 적는다.

## 읽을 문서
- 프롬프트에서 읽으라고 한 문서만 읽는다.
- 프론트팀은 docs/source.md를 읽지 않고 src/data, src/content와 인수인계 문서만 쓴다.
- node_modules, dist, .astro는 읽지 않는다.

## 품질
- 색과 간격은 global.css 토큰만 쓴다. 임의의 hex 색상 금지.
- 360px~1440px 반응형, 라이트·다크 모드 확인.
- 수치나 성과를 지어내지 않는다. 회사 내부 정보, 고객사 이름은 넣지 않는다.
- 새 라이브러리는 notes/<내 역할>.md에 이유를 적고 승인 후에만 추가한다.
- 작업이 끝나면 npm run build 통과를 확인하고 커밋 메시지에 바꾼 내용을 요약한다.
