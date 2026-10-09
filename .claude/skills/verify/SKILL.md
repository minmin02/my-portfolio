---
name: verify
description: 빌드 확인 + 규칙 위반 정적 검사 (문구도 바꿨다면 content-reviewer까지)
disable-model-invocation: true
---

npm run build를 실행하고, verifier 서브에이전트로 규칙 위반을 검사해. 이번 브랜치에서 src/content, src/data, 섹션 문구를 바꿨다면 content-reviewer 서브에이전트도 돌려.
결과를 하나의 표로 합쳐 보고하고, 고칠 것과 그대로 둘 것을 구분해 줘. 코드는 고치지 마.
