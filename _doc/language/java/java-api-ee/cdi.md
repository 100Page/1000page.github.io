---
order: 0
title: java
description: 컨텍스트 및 의존성 주입 (CDI)
summary:
keywords:
- java api
- java enterprise
- cdi
- 컨텍스트 및 의존성 주입
tags:
- java
- enterprise
created_time: 2024-10-07 13:42
modified_time: 2024-11-10 18:17
---

# CDI
Java Contexts and Dependency Injection  
: Java EE 6부터 도입된 컨텍스트 관리 및 의존성 주입을 위한 표준 스펙  
: 자바 애플리케이션 객체의 생명주기를 관리하며 객체 간 의존성을 외부에서 주입  
: Jakarta 10부터는 CDI를 두 개의 프로파일로 나누어 지원  

프로파일 | 특징
---|---
CDI Lite | 기능이 경량화된 스펙, 컴파일 타임에 의존성 주입 결정, 네이티브 이미지 지원
CDI Full | 전체 기능 지원, 런타임에 의존성 주입을 결정, 동적 프록시같은 고급 기능 지원


**CDI Lite**  
: 경량화되고 성능을 최적화해 네이티브 클라우드 환경에 적합  
: 컴파일 타임에 의존성 주입을 결정하며 리플렉션 사용을 최소화해 성능이 향상  
: 리플렉션 사용이 최소화되어 네이티브 이미지 생성에 적합

```
네이티브 이미지는 컴파일 타임에 모든 클래스 관련 정보를 수집하는데 
리플렉션은 런타임에 동적 참조되므로 클래스 정보를 사전에 완전히 분석하기 어려워짐
```


**CDI Full**
: 엔터프라이즈 애플리케이션 개발을 위한 다양한 기능 지원  
: 런타임에 의존성 주입을 결정하며 리플렉션이나 동적 프록시를 통해 동적 기능 지원


**구현체**
- Weld
- OpenWebBeans
- CanDI



## API

- jakarta.enterprise
- jakarta.inject


**개념**

용어 | 설명
---|---
DI        | 객체 간의 의존 관계를 외부에서 설정하는 디자인 패턴
Context   | CDI Bean의 생명주기 전반을 관리하는 환경
Bean      | CDI 컨테이너에 의해 관리되는 자바 객체
Scope     | CDI Bean의 생명주기 관리



### CDI Annotation
: XML 기반 설정도 지원하나 주로 어노테이션을 사용해 설정  
: CDI Lite와 CDI Full의 어노테이션 지원 범위가 다름 (CDI Full 기준으로 작성됨)  


**Bean**

어노테이션 | 설명 
---|---
@Inject   | 의존성 주입 지점 명시
@Named    | Bean 이름 부여
@Produces | Bean 생성 메서드 지정
@Priority | Bean의 우선순위 지정


**Scope**

어노테이션 | 설명 
---|---
@ApplicationScoped  | 애플리케이션이 살아있는 동안 상태 공유
@ConversationScoped | 명시적으로 정의한 기간 동안 상태 공유
@SessionScoped      | HTTP 세션이 살아있는 동안 상태 공유
@RequestScoped      | HTTP 요청이 살아있는 동안 상태 공유
@Dependent          | 주입되는 Bean의 스코프를 따름
@Singleton          | 애플리케이션 전체에서 단일 인스턴스를 보장하는 새로운 스코프


**Qualifiers**  
: 여러 Bean이 동일한 인터페이스 구현시 특정 Bean을 선택하기 위한 어노테이션  

어노테이션 | 설명 
---|---
@Default     | 기본 한정자
@Alternative | 대체 구현 지정
@Any         | 모든 Bean 매칭
@Qualifier   | 사용자 정의 한정자 정의


**Event**  
: 구성 요소간 비동기적으로 메시지를 전달하는 인터페이스  

어노테이션 | 설명 
---|---
@Observes      | 이벤트 수신 메서드 지정
@ObservesAsync | 비동기 이벤트 수신 


**Interceptor**

어노테이션 | 설명 
---|---
@Interceptor  | 인터셉터 클래스 지정
@AroundInvoke | 인터셉터 메서드 지정
@Decorator    | 데코레이터 클래스 지정
