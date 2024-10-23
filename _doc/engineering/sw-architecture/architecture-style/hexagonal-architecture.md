---
order: 0.13
title: architecture
description: 육각형 아키텍처 (포트 및 어댑터 패턴)
summary:
keywords:
- software architecture style
- hexagonal architecture
- 소프트웨어 아카텍처 스타일
- 아키텍처 스타일
- 육각형 아키텍처
tags:
- architecture
created_time: 2024-10-23 10:44
modified_time: 2024-10-23 11:44
---

# Hexagonal Architecture
= Ports and Adapters Pattern  
: 계층형 아키텍처의 한계를 극복하기 위해 설계됨  
: 시스템이 어떻게 구성되고 상호작용하며 분리될 수 있는지에 대한 스타일  
: 핵심 애플리케이션 로직과 외부 시스템(데이터베이스, 네트워크 등)을 분리하여 시스템이 외부 변화에 유연하게 대응하며 쉬운 유지 관리가 가능한 애플리케이션을 목표로 함  
: 외부 시스템이 변경되더라도 핵심 로직은 영향 받지 않음

**구성**
```
      내부         경계     외부
Application Core - Port - Adapter
```

**Application Core**  
: 애플리케이션 핵심 = 비즈니스 로직  
: 외부 시스템에 대한 의존성이 없이 핵심 기능만 구현  

**Port**  
: 애플리케이션이 외부 시스템과 상호작용하기 위한 인터페이스  
: 외부 시스템과 상호작용하기 위한 입력 및 출력 메커니즘이 정의됨  
: 애플리케이션이 요청하는 포트와 외부 시스템을 호출하는 포트로 분류됨  

**Adapter**  
: 포트와 외부 시스템을 실제로 연결하는 구현체  


**특징**
- 비즈니스 로직을 중심으로 모든 의존성은 내부에 있음
- 관심사가 명확하게 분리됨
- 외부 시스템과 결합도를 낮춤
- 기술이 독립적이며 기술 스택 교체가 용이
- 테스트가 용이