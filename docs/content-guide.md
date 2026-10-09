# 콘텐츠 가이드 (프론트팀용)

> **주의**: 프론트팀은 `docs/source.md`를 읽지 않는다. 이 문서와 `src/data/profile.ts`, `src/content/projects/` 만 참조한다.

---

## 1. `src/data/profile.ts` 필드 설명

```ts
profile.name          // string — 이름 "김민규"
profile.tagline       // string — 직군 "Backend · Infra"
profile.description   // string — 한 줄 소개 (Hero·About에 사용)
profile.contact.email // string
profile.contact.github // string — URL
profile.contact.velog  // string — URL
```

### experience[]
```ts
{
  company: string   // 회사명
  team: string      // 팀명
  role: string      // 직책
  period: string    // "YYYY.MM ~ YYYY.MM 또는 재직 중"
  type: string      // 고용 형태 (예: "IPP 일학습병행")
  bullets: string[] // 주요 업무 목록
}
```

### skills
```ts
// Record<string, string[]> — 분야별 기술 목록
profile.skills['Backend'] // string[]
profile.skills['Infra']
profile.skills['DB']
profile.skills['Cloud']
```

### education
```ts
{
  school: string      // "한성대학교"
  major: string       // "컴퓨터공학부 (컴퓨터소프트웨어전공)"
  graduation: string  // "2027.02 졸업 예정"
  gpa: string         // "3.96 / 4.5 (TODO: 만점 기준 확인)"
}
```

### 기타 배열
```ts
profile.certifications[]   // "자격증명 · 취득일 · 발급기관" 형식
profile.awards[]           // "수상명 · 날짜 · 주최"
profile.educationPrograms[] // "과정명 · 기간"
profile.blogPosts[]        // { title: string, url: string }
```

---

## 2. `src/content/projects/` frontmatter 필드

```ts
title: string          // 프로젝트명
period: string         // "YYYY.MM ~ YYYY.MM"
org: string            // 소속/대회명
award?: string         // (선택) 수상명
role: string           // 맡은 역할
stack: string[]        // 기술 스택
summary: string        // 한 줄 설명
github?: string        // (선택) GitHub URL
order: number          // 정렬 순서 (낮을수록 먼저)
```

프로젝트 파일:
| 파일 | order | title |
|---|---|---|
| `university-ai.md` | 1 | 질문 하나로 끝내는 대학 생활 |
| `nect.md` | 2 | NECT |
| `moodtrip.md` | 3 | MoodTrip |
| `food-today.md` | 4 | 오늘 뭐 먹지? |

---

## 3. 섹션별 사용 데이터

| 섹션 | 사용 데이터 |
|---|---|
| **Hero** | `profile.name`, `profile.tagline`, `profile.description`, `profile.contact` |
| **About** | `profile.description`, `profile.education` |
| **Experience** | `profile.experience[]` |
| **Projects** | `getCollection('projects')` → order 오름차순 정렬 |
| **Skills** | `profile.skills` (분야별 그룹) |
| **Certs** | `profile.certifications`, `profile.awards`, `profile.educationPrograms` |
| **Blog** | `profile.blogPosts[]` |
| **Contact** | `profile.contact` |

---

## 4. 데이터 불러오기 예시

```astro
---
// src/content 프로젝트 목록 가져오기
import { getCollection } from 'astro:content';
const projects = (await getCollection('projects')).sort((a, b) => a.data.order - b.data.order);

// src/data/profile 가져오기
import { profile } from '../data/profile';
---
```

---

## 5. 남은 TODO 목록

| 위치 | 내용 |
|---|---|
| `profile.education.gpa` | 만점 기준 확인 (4.5인지 확인) |
| `profile.certifications[1]` | AWS CCP 취득일 확인 |
| `university-ai.md` → `role` | 맡은 에이전트나 기능 구체화 |
| `nect.md` → `summary` | 서비스 한 줄 설명 보완 |
| `moodtrip.md` → `role` | 맡은 기능 구체화 |
| `food-today.md` → `role` | 개인/팀 여부, 맡은 부분 기재 |

TODO가 있는 필드는 화면에 표시하지 않거나 조건부 렌더링으로 숨긴다.
