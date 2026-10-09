---
name: p0-architect
description: Astro 프로젝트 기반 구축 (기반이 없을 때 사용)
disable-model-invocation: true
---

docs/source.md가 포트폴리오 원본이야. Astro + Tailwind CSS + TypeScript로 정적 포트폴리오 사이트의 기반을 만들어 줘.
AGENTS.md, CLAUDE.md, .claude/, docs/, notes/는 이미 있으니 수정하지 마.

1. Astro 프로젝트를 만들고 Tailwind를 연결해. 폴더가 비어 있지 않으니 임시 폴더에 만든 뒤 필요한 파일만 옮겨도 돼.
2. 폴더 구조: src/layouts/Base.astro, src/pages/index.astro, src/styles/global.css, src/components/ui/, src/components/sections/, src/content/projects/, src/data/profile.ts, src/pages/projects/[slug].astro
3. astro.config.mjs에 site: 'https://minmin02.github.io', base: '/my-portfolio'
4. Base.astro: <html lang="ko">, 한글 Pretendard·영문 Geist, 기본 메타 태그, 라이트·다크 전환
5. index.astro에 섹션 순서만 배치: Hero, About, Experience, Projects, Skills, Certs, Blog, Contact. 각 섹션은 제목만 있는 뼈대 컴포넌트
6. Content Collections projects 스키마: title, period, org, award(선택), role, stack(문자열 배열), summary, github(선택), order(숫자)
7. npm run build 통과 확인
끝나면 /handoff를 실행해 인수인계 파일을 갱신해.
