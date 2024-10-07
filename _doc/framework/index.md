---
order: 8
title: framework
description: 프레임워크
tags:
- index
- framework
created_time: 2024-10-05 06:58
modified_time: 2024-10-07 23:09
---

# Framework
: 소프트웨어 개발을 위해 기본 구조와 규칙 등을 제공하는 플랫폼  
: 1980년 후반 프레임워크 개념이 등장했으며 객체 지향 프로그래밍이 발전하며 함께 발전  

**framework vs system**
: 프레임워크는 특정 유형의 소프트웨어를 개발하기 위한 기본 구조나 틀 제공
: 프레임워크는 개발자가 기능을 구현해야 하는 미완성된 시스템
: 시스템은 특정 기능을 수행하기 위해 여러 하드웨어와 소프트웨어 컴포넌트가 상호작용하는 완성된 환경
: 시스템은 문제를 해결하기 위해 완전한 솔루션을 제공하고 사용자는 시스템을 통해 정해진 기능을 활용



## Framework Classification 
: 프레임워크는 특성에 따라 분류되며 하나의 프레임워크는 여러 분류에 속함  

**접근 방식에 따라** 
- [Opinionated](#opinionated)
- [Unopinionated](#unopinionated)

**패러다임에 따라**
- Object-oriented
- Functional
- Reactive
- Event-driven

**영역에 따라**
- Web
- Mobile apps
- Desktop apps
- Embedded systems

**아키텍처에 따라**
- MVC
- MVVM
- MVP 

**구성 방식에 따라**
- Monolithic
- Microservices

**확장성에 따라**
- Non-scalable
- Scalable

**배포 방식에 따라**
- Server-side
- Client-side

**언어에 따라**
- Java Framework
- Python Framework
- JavaScript Framework
- ...

**기능에 따라**
- UI/UX Framework
- ORM Framework
- Testing Framework
- Logging Framework
- Security Framework
- Data Processing Framework



### Opinionated
의견이 강한, 독선적 프레임워크  
: 특정 방식으로 코드를 작성하도록 엄격한 규칙과 구조를 제공하는 프레임워크  
: 규칙과 구조가 엄격하나 이를 통해 일관되고 신속한 개발이 가능함  
: 많은 사항들이 미리 결정되어 있어 규칙 습득이 필요하며 유연성이 떨어짐  

**Convention over Configuration**  
: 미리 정의된 규칙과 패턴을 제공해 개발자가 설정을 거의 하지 않는 방식  
: ex. Ruby on Rails, Django, Spring Boot 등



### Unopinionated
의견이 적은, 비독선적 프레임워크  
: 강제성이 적고 사용자가 구조나 방식 등을 선택할 수 있는 프레임워크  
: 맞춤형 구조 구현이 가능하고 다른 프로젝트를 결합해 사용하는 등 유연성이 높음  
: 많은 설정을 사용자가 직접하며 규모가 클수록 전반적인 지식을 알아야 확장이 가능함  

**Configuration First**  
: 개발자가 설정을 세부적으로 정의할 수 있도록 유연성을 제공하는 방식  
: ex. Express, Flask 등

**Library-based**  
: 라이브러리를 조합해 프로젝트를 구축하는 방식  
: ex. React 등