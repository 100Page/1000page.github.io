---
order: 0.2
title: architecture
description: 소프트웨어 아카텍처
tags:
- software architecture
- architecture
created_time: 2024-10-05 20:32
modified_time: 2024-10-08 23:04
---

# Software Architecture
: 소프트웨어 시스템의 구조를 정의하고 구성 요소 간 관계에 대한 원칙 제시  
: 소프트웨어 아키텍처를 통해 시스템 전체 구조에 대한 명확한 청사진 제공  
: 소프트웨어 아키텍처는 시스템의 확장성, 성능, 보안 등에 영향을 미침  

- [Architecture Principle](./architecture-principle.md)
- [Architectural Style](./architectural-style/index.md)
- [Architectural Pattern](./architectural-pattern/index.md)
- [Architecture Modeling](./architecture-modeling.md) 


**구성 요소**  
: 프로젝트 요구 사항에 따라 구성 요소는 추가되거나 새로 정의될 수 있음  

요소 | 설명
---|---
컴포넌트 | 특정 기능을 수행하는 독립적인 모듈
관계 | 컴포넌트 간 상호작용이나 연결 방식 (데이터 흐름, 제어 흐름, 의존성 등)
인터페이스 | 컴포넌트의 관계를 정의한 명세
제약 사항 | 시스템 설계 및 구현에 적용되는 제한이나 규칙


**history**
```
소프트웨어 아키텍처는 1960년대부터 개념이 대두되었으나 공식적이지 않았음
1990년대에 들어서 소프트웨어가 점점 복잡해져 체계적인 설계가 필요해지며 공식적인 분야로 인정받음
```



## Software Layer
: 아키텍처 스타일이었으나 현재 소프트웨어 시스템에서 보편적으로 사용되는 개념  

- Presentation Layer
- Application Layer
- Middleware Layer
- Data Access Layer
- Database Layer
