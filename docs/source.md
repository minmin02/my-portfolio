# 김민규 포트폴리오

**Backend · Infra**
한성대학교 컴퓨터공학부 4학년

Spring으로 백엔드를 개발해 왔고, 지금은 그 서비스가 올라가는 서버와 쿠버네티스 쪽을 공부하고 있습니다.

- Velog: https://velog.io/@minmin02/posts
- GitHub: https://github.com/minmin02
- Email: aktr378@gmail.com

---

## 경력

### 이노그리드 · AI플랫폼팀 인턴
2026.07 ~ 재직 중 · IPP 일학습병행

- k3s 멀티 노드, 멀티 마스터 k8s 클러스터를 가상머신에 구축하고 매주 팀에 발표
- MySQL 데이터를 NFS CSI 동적 프로비저닝으로 옮겨 워커 노드 한 대에 묶여 있던 구조를 풀고, 이후 NFS 서버가 단일 장애점이 되는 한계를 확인
- k3s 단일 노드 개발 환경에서 Spring Boot · jOOQ · GraphQL로 백엔드 개발
- JPA 기술 조사 발표: N+1 문제를 간단한 애플리케이션으로 실험하고 fetch join, @EntityGraph, batch size 활용법 정리

---

## 프로젝트

### 질문 하나로 끝내는 대학 생활
2026.04 ~ 2026.06 · 제1회 한성 AX 프런티어 챌린지 우수상 · 4인

- 대학 홈페이지·공지·학술정보관 등 흩어진 정보를 질문 하나로 연결하는 메타 에이전트 기반 AI 서비스
- 오케스트레이터가 질문 의도를 분석해 학술정보관·전자결재 기안·캠퍼스 맵 에이전트로 연결
- 역할: 에이전트 개발 및 백엔드 개발 (AI 코딩 도구 활용) — TODO: 맡은 에이전트나 기능
- 기술: Spring, Python, RAG, pgvector

### NECT
2025.09 ~ 2026.02 · UMC 9기 · https://github.com/UMC-NECT/Nect-Backend

- 함께 성장할 사람들을 연결하는 서비스 — TODO: 서비스 한 줄 설명
- 역할: 백엔드 개발. 프로젝트 생성 도메인 API, Redis를 연동한 채팅 기능
- 기술: Spring Boot (멀티 모듈 api·core·client), PostgreSQL, Redis, Docker Compose, Nginx

### MoodTrip
2025.07 ~ 2025.10 · 한국관광공사 관광데이터 활용 공모전 · https://github.com/infiniment/MoodTrip

- 관광 데이터를 활용해 감정에 맞는 여행지를 추천하고, 비슷한 감정의 여행자끼리 동행을 매칭하는 웹 서비스
- 역할: 백엔드 개발 — TODO: 맡은 기능
- 기술: Spring Boot, JPA, QueryDSL, MariaDB, Redis, Docker

### 오늘 뭐 먹지?
2024.12 ~ 2025.02 · 투비소프트 넥사크로 전문가 양성과정 10기

- 맛집 검색 플랫폼. 넥사크로로 화면을 설계하고, 전자정부프레임워크(Spring)와 MyBatis로 SQL을 작성해 검색 API를 구현한 뒤 화면과 연동
- 외장 Tomcat 환경에서 실행
- 역할: TODO: 개인 또는 팀, 맡은 부분
- 기술: Nexacro, 전자정부프레임워크, MyBatis, Tomcat

---

## 기술

| 분야 | 기술 |
|---|---|
| Backend | Java, Spring Boot, JPA(Hibernate), MyBatis, jOOQ, GraphQL, SQL |
| Infra | Linux, Kubernetes(k3s, k8s), Docker, NFS, Bash |
| DB | MySQL, PostgreSQL, MariaDB |
| Cloud | AWS EC2 |

---

## 학력

- 한성대학교 컴퓨터공학부 (컴퓨터소프트웨어전공) · 2027.02 졸업 예정 · 학점 3.96 / 4.5 (TODO: 만점 기준 확인)

---

## 자격증 · 수상 · 교육

- 정보처리기사 · 2026.06 · 한국산업인력공단
- AWS Certified Cloud Practitioner · TODO: 취득일
- 제1회 한성 AX 프런티어 챌린지 우수상 · 2026.06 · 한성대학교
- 투비소프트 넥사크로 전문가 양성과정 10기 · 2024.12 ~ 2025.03

---

## 기술 블로그

Velog에 쿠버네티스 · 리눅스 · 네트워크 · 스프링부트 시리즈로 정리하고 있습니다.

- K8s 멀티(마스터) 노드 환경 구축: https://velog.io/@minmin02/%EC%BF%A0%EB%B2%84%EB%84%A4%ED%8B%B0%EC%8A%A4K8s-%EB%A9%80%ED%8B%B0%EB%A7%88%EC%8A%A4%ED%84%B0-%EB%85%B8%EB%93%9C-%ED%99%98%EA%B2%BD-%EA%B5%AC%EC%B6%95
- K3s 멀티 노드 클러스터 구축: https://velog.io/@minmin02/K3s-%EB%A9%80%ED%8B%B0-%EB%85%B8%EB%93%9C-%ED%81%B4%EB%9F%AC%EC%8A%A4%ED%84%B0-%EA%B5%AC%EC%B6%95
