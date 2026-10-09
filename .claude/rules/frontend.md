---
paths:
  - "src/components/sections/**"
  - "src/pages/**"
  - "src/layouts/**"
---

# 프론트엔드 규칙
- ui 컴포넌트와 토큰만 쓴다. 임의 색상·간격 금지.
- 내부 링크·이미지에 `import.meta.env.BASE_URL`을 붙인다.
- 내용은 src/data, src/content에서만 가져온다. TODO 값은 화면에 보이지 않게 한다.
- 애니메이션은 CSS로 가볍게, `prefers-reduced-motion`을 지킨다.
- 360/768/1440px에서 깨지지 않게 한다.
