export interface Contact {
  email: string;
  github: string;
  velog: string;
}

export interface ExperienceItem {
  company: string;
  team: string;
  role: string;
  period: string;
  type: string;
  bullets: string[];
}

export interface SkillGroup {
  [category: string]: string[];
}

export interface Education {
  school: string;
  major: string;
  graduation: string;
  gpa: string;
}

export interface BlogPost {
  title: string;
  url: string;
}

export interface Profile {
  name: string;
  tagline: string;
  description: string;
  contact: Contact;
  experience: ExperienceItem[];
  skills: SkillGroup;
  education: Education;
  certifications: string[];
  awards: string[];
  educationPrograms: string[];
  blogPosts: BlogPost[];
}

export const profile: Profile = {
  name: '김민규',
  tagline: 'Backend · Infra',
  description:
    'Spring으로 백엔드를 개발해 왔고, 지금은 그 서비스가 올라가는 서버와 쿠버네티스 쪽을 공부하고 있습니다.',
  contact: {
    email: 'aktr378@gmail.com',
    github: 'https://github.com/minmin02',
    velog: 'https://velog.io/@minmin02/posts',
  },
  experience: [
    {
      company: '이노그리드',
      team: 'AI플랫폼팀',
      role: '인턴',
      period: '2026.07 ~ 재직 중',
      type: 'IPP 일학습병행',
      bullets: [
        'k3s 멀티 노드, 멀티 마스터 k8s 클러스터를 가상머신에 구축하고 매주 팀에 발표',
        'MySQL 데이터를 NFS CSI 동적 프로비저닝으로 옮겨 워커 노드 한 대에 묶여 있던 구조를 풀고, 이후 NFS 서버가 단일 장애점이 되는 한계를 확인',
        'k3s 단일 노드 개발 환경에서 Spring Boot · jOOQ · GraphQL로 백엔드 개발',
        'JPA 기술 조사 발표: N+1 문제를 간단한 애플리케이션으로 실험하고 fetch join, @EntityGraph, batch size 활용법 정리',
      ],
    },
  ],
  skills: {
    Backend: ['Java', 'Spring Boot', 'JPA(Hibernate)', 'MyBatis', 'jOOQ', 'GraphQL', 'SQL'],
    Infra: ['Linux', 'Kubernetes(k3s, k8s)', 'Docker', 'NFS', 'Bash'],
    DB: ['MySQL', 'PostgreSQL', 'MariaDB'],
    Cloud: ['AWS EC2'],
  },
  education: {
    school: '한성대학교',
    major: '컴퓨터공학부 (컴퓨터소프트웨어전공)',
    graduation: '2027.02 졸업 예정',
    gpa: '3.96 / 4.5 (TODO: 만점 기준 확인)',
  },
  certifications: [
    '정보처리기사 · 2026.06 · 한국산업인력공단',
    'AWS Certified Cloud Practitioner · TODO: 취득일',
  ],
  awards: ['제1회 한성 AX 프런티어 챌린지 우수상 · 2026.06 · 한성대학교'],
  educationPrograms: ['투비소프트 넥사크로 전문가 양성과정 10기 · 2024.12 ~ 2025.03'],
  blogPosts: [
    {
      title: 'K8s 멀티(마스터) 노드 환경 구축',
      url: 'https://velog.io/@minmin02/%EC%BF%A0%EB%B2%84%EB%84%A4%ED%8B%B0%EC%8A%A4K8s-%EB%A9%80%ED%8B%B0%EB%A7%88%EC%8A%A4%ED%84%B0-%EB%85%B8%EB%93%9C-%ED%99%98%EA%B2%BD-%EA%B5%AC%EC%B6%95',
    },
    {
      title: 'K3s 멀티 노드 클러스터 구축',
      url: 'https://velog.io/@minmin02/K3s-%EB%A9%80%ED%8B%B0-%EB%85%B8%EB%93%9C-%ED%81%B4%EB%9F%AC%EC%8A%A4%ED%84%B0-%EA%B5%AC%EC%B6%95',
    },
  ],
};
