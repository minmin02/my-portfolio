# 디자인 시스템 B — Editorial Light

> 프론트팀 전용. 이 문서만 보고 섹션을 만든다. `docs/source.md`는 읽지 않는다.

---

## 1. 컬러 토큰

| 토큰 | 라이트(기본) | 다크(`[data-theme="dark"]`) | 쓰임새 |
|---|---|---|---|
| `--color-bg` | `#fafaf8` | `#1c1b19` | 페이지 배경 |
| `--color-surface` | `#f3f3f0` | `#252420` | 카드·패널 배경 |
| `--color-surface-2` | `#e8e8e4` | `#2e2d29` | 중첩 배경 |
| `--color-border` | `#d4d4cf` | `#3d3c37` | 테두리·구분선 |
| `--color-text` | `#1a1a18` | `#e8e6df` | 본문 텍스트 |
| `--color-text-muted` | `#6b6b66` | `#9b9891` | 보조 텍스트 |
| `--color-accent` | `#b45309` | `#f59e0b` | 강조·링크·액션 |
| `--color-accent-hover` | `#92400e` | `#fbbf24` | 액센트 hover |

**hex를 직접 쓰지 말 것** — 반드시 CSS 변수로.

---

## 2. 타이포그래피 토큰

```css
--font-size-xs / sm / base / lg / xl / 2xl / 3xl / 4xl / 5xl
--font-weight-normal(400) / medium(500) / bold(700)
```

한글: `word-break: keep-all`, `line-height: 1.8` 이상.

---

## 3. 간격 토큰

`--space-1(0.25rem)` ~ `--space-20(5rem)` (4px 기준)

---

## 4. 레이아웃

- 최대 너비: `var(--max-w-content)` (72rem)
- 좌우 패딩: `var(--space-6)` (`.container` 클래스 사용)
- 섹션 상하 패딩: `var(--section-padding-y)` = `var(--space-20)`
- 섹션 구분: `border-bottom: 1px solid var(--color-border)` (global.css에서 자동 적용)

```astro
<section id="섹션명" class="container">
  <!-- section에 border-bottom이 자동 적용됨 -->
</section>
```

---

## 5. UI 컴포넌트 사용법

### Button
```astro
import Button from '../ui/Button.astro';

<Button href="..." variant="primary" size="md">텍스트</Button>
<Button variant="secondary" size="sm">텍스트</Button>
<Button href="..." variant="ghost">GitHub ↗</Button>
```
- `variant`: `primary` | `secondary` | `ghost`
- `size`: `sm` | `md` | `lg`

### Card
```astro
import Card from '../ui/Card.astro';

<Card>
  <h3>제목</h3>
  <p>내용</p>
</Card>
```

### Tag
```astro
import Tag from '../ui/Tag.astro';

<Tag>Spring Boot</Tag>
```
보더 아웃라인 스타일.

### SectionTitle
```astro
import SectionTitle from '../ui/SectionTitle.astro';

<SectionTitle id="experience" number="02">경력</SectionTitle>
```
- `number`: (선택) 섹션 번호 — 잡지 스타일 레이블
- 오른쪽에 자동으로 구분선 확장

---

## 6. 다크/라이트 모드

`html` 요소에 `data-theme="dark"` 속성을 토글 (라이트가 기본).

```js
document.documentElement.dataset.theme = isDark ? 'dark' : '';
```

---

## 7. 해야 할 것 / 하지 말 것

| 해야 할 것 | 하지 말 것 |
|---|---|
| CSS 변수만 사용 | hex 값 직접 작성 |
| `import.meta.env.BASE_URL` 내부 경로 | `href="/"` 절대 경로 |
| `prefers-reduced-motion` 준수 | 복잡한 JS 애니메이션 |
| 얇은 보더로 구획 구분 | 배경색으로 섹션 구분 |
| TODO 값은 조건부로 숨김 | TODO 텍스트 화면 노출 |
| `word-break: keep-all` | 한글 줄바꿈 방치 |
