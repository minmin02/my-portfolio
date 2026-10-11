export interface Contact {
  email: string;
  phone: string;
  github: string;
  velog: string;
}

export interface PersonalInfo {
  age: string;
  location: string;
  major: string;
}

export interface ExperienceItem {
  company: string;
  team: string;
  role: string;
  period: string;
  type: string;
  bullets: string[];
  logo?: string;
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
  nameEn: string;
  tagline: string;
  heroLines: string[];
  description: string;
  aboutLines: string[];
  contact: Contact;
  personalInfo: PersonalInfo;
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
  nameEn: 'Minkyu Kim',
  tagline: 'Backend · Infra',
  heroLines: [
    '안녕하세요. 쿠버네티스 환경을 구축하고, 그 위에서 백엔드를 개발하는 김민규입니다.',
    '지금은 클라우드 기업에서 인턴으로 일하며, 서비스를 만드는 일과 안정적으로 운영하는 일을 함께 배우고 있습니다.',
  ],
  aboutLines: [
    '안녕하세요! 인프라 엔지니어를 준비하는 김민규입니다.',
    '이노그리드 인턴으로 k3s와 멀티 마스터 k8s 클러스터를 직접 구축했고, 그 위에서 Spring Boot 백엔드를 개발했습니다.',
    '워커 노드 한 대에 묶여 있던 SQL 데이터를 NFS로 옮겨 노드 장애에도 서비스가 유지되게 했고, 이때 NFS 서버가 새로운 단일 장애점이 된다는 것도 확인했습니다.',
    '모르는 것은 직접 실험해 확인하고 Velog에 기록합니다.',
  ],
  description: '',
  contact: {
    email: 'aktr378@gmail.com',
    phone: '010-3214-9655',
    github: 'https://github.com/minmin02',
    velog: 'https://velog.io/@minmin02/posts',
  },
  personalInfo: {
    age: '2002년생 (만 24세)',
    location: '성남시 분당구',
    major: '컴퓨터공학부',
  },
  experience: [
    {
      company: '이노그리드',
      team: 'AI플랫폼팀',
      role: '인턴',
      period: '2026.07 ~ 재직 중',
      type: 'IPP 일학습병행',
      logo: 'innogridlogo.png',
      bullets: [
        'k3s 멀티 노드, 멀티 마스터 k8s 클러스터를 가상머신에 구축하고 매주 팀에 발표',
        'MySQL 데이터를 NFS CSI 동적 프로비저닝으로 옮겨 워커 노드 한 대에 묶여 있던 구조를 풀고, 이후 NFS 서버가 단일 장애점이 되는 한계를 확인',
        'k3s 단일 노드 개발 환경에서 Spring Boot · jOOQ · GraphQL로 백엔드 개발',
        'JPA 기술 조사 발표: N+1 문제를 간단한 애플리케이션으로 실험하고 fetch join, @EntityGraph, batch size 활용법 정리',
      ],
    },
    {
      company: 'UMC 9기',
      team: '',
      role: '서버 파트',
      period: '2025.09 ~ 2026.02',
      type: '동아리',
      logo: 'umclogo.png',
      bullets: [
        'Spring Boot 백엔드 개발, 멀티모듈 구조 응용',
      ],
    },
    {
      company: '투비소프트 넥사크로 전문가 양성과정 10기',
      team: '',
      role: '',
      period: '2024.12 ~ 2025.03',
      type: '교육',
      logo: 'tobesoftlogo.png',
      bullets: [
        'MyBatis와 전자정부프레임워크를 활용한 웹 애플리케이션 개발',
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
    gpa: '3.94 / 4.5',
  },
  certifications: [
    'SQLD · 2025.09 · 한국데이터산업진흥원',
    'AWS Certified Cloud Practitioner (CLF-C02) · 2026.01 · Amazon Web Services',
    '정보처리기사 · 2026.06 · 한국산업인력공단',
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
