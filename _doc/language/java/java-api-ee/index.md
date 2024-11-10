---
order: 0.3
title: java
description: 자바 엔터프라이즈 에디션
summary:
keywords:
- java
- java api
- java enterprise
- jakarta ee
- 자바 엔터프라이즈 에디션
tags:
- java
- enterprise
created_time: 2024-10-07 06:21
modified_time: 2024-11-10 18:16
---

# Java EE
= Jakarta EE    
: 엔터프라이즈 애플리케이션 개발을 위함 플랫폼  
: 대규모 동시 접속, 보안, 배치 시스템 등 엔터프라이즈 애플리케이션 개발을 위한 스펙 제공  
: Java EE 소유권이 Eclipse Foundation으로 이전되며 Jakarta EE로 명칭이 변경됨  
: Jakarta EE는 클라우드 네이티브 및 마이크로서비스 환경을 위해 다양한 기술 도입  

> J2SE 1.2 일부 => J2EE => Java EE => Jakarta EE 

- [Jakarta EE Architecture](#jakarta-ee-architecture)
- [Jakarta EE Component](#jakarta-ee-component)
  - [Jakarta EE Spec](#jakarta-ee-spec)
  - [Jakarta EE Spec Implementation](#jakarta-ee-spec-implementation)
- [MicroProfile](#microprofile)


**version**
- https://jakarta.ee/specifications/platform/10/
- https://jakarta.ee/specifications/platform/11/


**hisotry**
```
초기에는 J2SE 1.2 일부였으나 2-tier 모델에서 3-tier 모델로 변화하며 데이터베이스 연동, 
트랜잭션 관리, 보안 등의 기술이 필요해지며 이를 위해 벤더사에서 구현해야 할 스펙을 정의한 것이 초기 J2EE
```



## Jakarta EE Architecture
: 엔터프라이즈 애플리케이션 개발을 위한 표준화된 아키텍처  
: Jakarta EE는 아키텍처의 각 계층을 기반으로 구체적인 기술과 스펙을 정의  

```
Client Tier  |   Middle Tier   |  EIS Tier (Enterprise Information System)
               - Web Tier
               - Business Tier
```


### Client Tier
= 프레젠테이션 티어  
: 사용자 인터페이스를 담당하는 티어  
: 애플리케이션 서버에 요청을 보내고 응답을 받아 사용자에게 표시  


### Middle Tier
= 애플리케이션 티어, 비즈니스 로직 티어, 데이터 접근 티어  
: 애플리케이션의 비즈니스 로직을 처리하는 티어  

**Web Tier**  
: 클라이언트 요청을 받아 비즈니스 계층으로 전달하고 결과를 받아 응답을 생성  
: Servlet, JSP, JSTL, JSF 등  

**Business Tier**  
: 요청에 따라 비즈니스 로직을 처리해 응답  
: 필요시 EIS 계층에 데이터를 전달하거나 전달받아 데이터를 처리  
: CDI, EJB 등 


### EIS Tier
= 데이터 티어, 퍼시스턴스 티어  
: 엔터프라이즈 정보 시스템과 상호작용 하는 티어  
: 데이터베이스나 ERP같은 시스템과 통신해 데이터를 관리하는 티어  
: JDBC, JPA, JTA, JCA 등  



## Jakarta EE Component
: Jakarta EE 구조와 아키텍처를 명확하게 정의하기 위해 도입

요소 | 설명
---|---
Spec      | Jakarta EE API와 기능을 정의한 문서
Container | Jakarta EE 애플리케이션을 실행하고 관리하는 환경
DD File   | Jakarta EE 애플리케이션의 구성 및 배포 정보를 담고 있는 파일
Module    | Jakarta EE 애플리케이션을 구성하는 기본 단위
            
**Jakarta EE 애플리케이션**  
: Jakarta EE 모듈로 구성되고 Jakarta EE 컨테이너에서 실행되는 애플리케이션  
: 하나 이상 모듈로 구성되며 하나 이상의 컨테이에서 실행될 수 있음  
: ex. 하나의 웹 모듈과 서블릿 컨테이너와 하나의 EJB 모듈과 EJB 컨테이너로 구성

> Application > Module + Module > Component + Component 



### Jakarta EE Module
: Jakarta EE 애플리케이션을 구성하는 요소로 애플리케이션은 하나 이상 모듈로 구성됨  
: Jakarta EE 모듈은 특정 역할이나 기능을 수행하며 독립적으로 배포 가능한 단위  
: Jakarta EE 모듈은 하나 이상 Jakarta EE 컴포넌트로 구성되며 특정 Jakarta EE 컨테이너에서 실행됨  
: 하나의 모듈이 하나의 컨테이너에서 실행되거나 여러 모듈이 하나의 컨테이너에서 실행될 수 있음  

모듈 | 패키징 | 설명
---|---|---
Web Module | .war | Servlet, JSP 등 웹 컴포넌트로 구성
EJB Module | .jar | 엔터프라이즈 자바 빈즈로 구성
Application Client Module | .jar | Java SE 컴포넌트로 구성


**Jakarta EE Component**  
: 실제로 기능을 수행하는 구체적인 코드  

컴포넌트 | 설명
---|---
Web Component             | HTTP 요청 처리, UI 제공
Enterprise Bean Component | 비즈니스 로직 처리, 트랜잭션 관리, 보안 관리
Application Client        | Jakarta EE API에 접근하는 Java SE 애플리케이션
Connector Component       | 외부 시스템과 연결하고 관리하기 위한 어댑터



### Jakarta EE Container
: Jakarta EE 컴포넌트 실행 환경으로 컨테이너는 컴포넌트를 실행하고 생명주기를 관리함  
: 배포 설명자를 통해 다양한 구성을 관리하나 최근에는 어노테이션을 통해 관리  

컨테이너 | 배포 설명자 | 설명
---|---|---
Web (Servlet) Container      | web.xml | JSP 컴파일, Servlet 실행 및 관리
Enterprise Bean Container    | ejb-jar.xml | EJB 실행 및 관리
Application Client Container | application-client.xml | Java SE 애플리케이션 실행
Connector Container          | ra.xml | 외부 시스템과의 연결을 관리



### Jakarta EE Spec
: Jakarta EE는 스펙을 Core Profile, Web Profile, Full Platform로 분류해 지원  
: 상위 프로파일은 하위 프로파일의 모든 기능을 포함하고 추가 기능을 제공함  

> Full Platform > Web Profile > Core Profile

**profile**  
: 특정한 환경, 요구 사항, 목표를 위해 선택된 기능 집합을 의미  



#### Core Profile
: Jakarta EE 10부터 도입  
: 클라우드 네이티브 및 마이크로서비스 환경에서 개발하기 위한 최소 스펙 집합   
: 가장 경량화된 프로파일로 마이크로서비스 환경에 사용하기 적합  

- Jakarta CDI Lite
- Jakarta JSON
- Jakarta REST


#### Web Profile
: 웹 애플리케이션 개발에 필요한 스펙 집합  
: 웹 애플리케이션을 위한 핵심 기술들로 구성  

- Jakarta CDI Full
- Jakarta Validation
- Jakarta Security
- Jakarta Servlet
- Jakarta WebSocket
- Jakarta Persistence
- Jakarta Enterprise Beans Lite


#### Full Platform
: 엔터프라이즈 애플리케이션 개발에 필요한 스펙 집합  
: 엔터프라이즈 애플리케이션 개발을 위한 포괄적인 솔루션 제공  

- Jakarta Enterprise Beans
- Jakarta Mail
- Jakarta Messaging
- Jakarta Batch



### Jakarta EE Spec Implementation
: Jakarta EE는 API 표준과 기능 요구 사항같은 스펙을 정의할 뿐 실제 구현은 벤더사에서 수행  

**Core Profile**
- Piranha Cloud

**Servlet Container**
- Apache Tomcat
- Jetty
- Undertow
- Geronimo

**Web Profile**
- Apache TomEE
- Open Liberty
- Payara Server

**Full Platform**
- WildFly
- GlassFish
- WebSphere Server
- Open Liberty
- Payara Server
- Resin



## MicroProfile
: Java EE의 느린 버전 업데이트로 새로운 기술이나 패러다임에 대한 스펙이 미진하여 <br>여러 벤더사에서 이에 대응하기 위해 Java EE 표준을 기반으로 스펙을 확장하거나 추가하는 프로젝트  
: 주로 마이크로서비스와 클라우드 네이티브 개발을 위한 스펙을 정의하고 기술 및 도구를 제공함  
: 일부 스펙은 Jakarta EE와 중복되며 MicroProfile 스펙이 Jakarta EE에 영향을 미침  

**API**
- MicroProfile Config
- MicroProfile Context Propagation
- MicroProfile JWT
- MicroProfile REST Client
- MicroProfile OpenAPI
- MicroProfile Reactive Messaging
- MicroProfile Reactive Streams Operators
- MicroProfile GraphQL
- MicroProfile OpenTracing
- MicroProfile Metrics
- MicroProfile Health
- MicroProfile Fault Tolerance

**Implementation**
- Quarkus
- Helidon
- Open Liberty
- Payara Server
- Apache TomEE


**MicroProfile Starter** (https://start.microprofile.io)  
: MicroProfile 기반 프로젝트를 생성할 수 있는 웹 기반 도구  