---
order: 17
title: cloud
description: 클라우드 컴퓨팅 (인덱스)
summary:
keywords:
- cloud
- cloud computing
- cloud service model
- cloud deployment model
- 클라우드
- 클라우드 컴퓨팅
tags:
- index
- cloud
created_time: 2024-09-07 23:44
modified_time: 2024-10-18 23:19
---

# Cloud Computing
: 사업자들이 유휴 컴퓨팅 자원을 재활용하는 목적으로 시작  
: 클라우드 사업자가 클라우드 시스템을 구축하고 네트워크를 통해 서비스 제공  
: 사용자가 컴퓨팅 자원을 개발/소유/운영/관리하지 않고 클라우드 사업자가 지원하는 서비스를 필요시 필요한 만큼 사용  
: 온프레미스 방식, 코로케이션 서비스, 호스팅 서비스의 단점 보완  

- [Cloud Service Model](./cloud-service-model)
- [Cloud Deployment Model](./cloud-deployment-model)
- [Cloud Architecture](./cloud-architecture.md)
- Cloud Service Platforms
  - AWS 
  - Azure
  - GCP
- [Cloud Management Tools](./cloud-management-tools.md)
- [Cloud Security](./cloud-security.md)


**history**  
```
1960년대에 시분할 시스템이 등장하며 클라우드 컴퓨팅 개념 확립
1990년대에 가상화 기술 발전으로 클라우드 컴퓨팅의 기술적 토대가 마련
2002년에 아마존이 퍼블릭 클라우드를 출시하며 현대적 의미의 클라우드 컴퓨팅 시작
```


**핵심 기술**
- 가상화 기술 : 리소스를 논리적으로 분할 = **유연성**
- 분산 처리 기술 : 가상화된 리소스를 활용해 작업 처리 = **확장성**
- 네트워킹 기술 : 분산된 리소스를 연결 = **접근성**


**특징**
- 인터넷에 연결된 장치를 통해 어디서나 접근 가능
- 사용자가 필요한 리소스를 즉시 요청하고 사용 가능 (온디맨드)
- 필요에 따라 리소스를 확장하거나 축소가 가능 (스케일링)
- 논리적으로 분리된 리소스를 할당받으나 물리적으로는 다른 사용자와 공유되는 멀티테넌시 구조
- 사용한 리소스를 객관적으로 측정하고 그에 따라 비용을 지불