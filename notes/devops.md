# DevOps 인수인계

## GitHub Actions 배포
- `.github/workflows/deploy.yml` 작성 완료
- main 브랜치 push 시 자동 빌드 → GitHub Pages 배포
- Astro 공식 방식 사용 (actions/configure-pages + upload-pages-artifact + deploy-pages)

## Base.astro 메타 태그 요청 (리드 담당)

Base.astro에 아래 내용 추가 요청:

### og:image 기본값
```html
<meta property="og:image" content={`${Astro.site}${import.meta.env.BASE_URL}/og-default.png`} />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
```

### Twitter Card
```html
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:image" content={`${Astro.site}${import.meta.env.BASE_URL}/og-default.png`} />
```

### 기타 메타 태그
```html
<meta name="theme-color" content="#0a0a0a" media="(prefers-color-scheme: dark)" />
<meta name="theme-color" content="#fafaf8" media="(prefers-color-scheme: light)" />
```

## public/ 파일
- `public/favicon.ico`, `public/favicon.svg` — 이미 있음
- `public/og-default.png` — 1200×630 OG 이미지 자리 (디자인팀 완성 후 교체)

## GitHub Pages 설정 (PM이 직접 해야 함)
1. 저장소 **Settings → Pages → Build and deployment → Source** 를 **GitHub Actions** 로 변경
2. main에 push하거나 Actions 탭에서 Re-run

## 배포 주소
`https://minmin02.github.io/my-portfolio/`
