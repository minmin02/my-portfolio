---
name: p1-devops
description: DevOps — GitHub Actions 배포 설정과 favicon 준비
disable-model-invocation: true
---

AGENTS.md를 읽어. 너는 DevOps야. 저장소 my-portfolio, 주소 https://minmin02.github.io/my-portfolio/
1. main에 push하면 GitHub Actions로 빌드해 GitHub Pages에 배포하는 .github/workflows/deploy.yml (Astro 공식 방식)
2. astro.config.mjs의 site·base 확인
3. public/에 favicon, Open Graph 미리보기 이미지 자리. 메타 태그 내용은 notes/devops.md에 정리 (Base.astro는 리드 담당)
4. npm run build 통과 확인
끝나면 /handoff를 실행해 인수인계 파일을 갱신해.
