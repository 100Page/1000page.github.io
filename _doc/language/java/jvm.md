---
order: 0.11
title: java
description: 자바 가상 머신 (JVM)
summary:
keywords:
- java
- jvm
- java virtual machine
- 자바
- 자바 가상 머신
tags:
- language
- java
created_time: 2024-10-10 13:14
modified_time: 2024-10-20 16:01
---

# JVM
Java Virtual Machine  
: 바이트코드가 실행되기 위한 환경  
: 운영체제와 자바 프로그램 사이에 위치해 프로그램이 실행되는데 필요한 리소스를 확보하고 이를 관리함  
: 운영체제 별 JVM이 존재하며 JVM 자체는 운영체제에 종속적  

**구성 요소**
- [Class Loader](#class-loader)
- [JVM Memory](#jvm-memory)
- [Execution Engine](#execution-engine)
- Native Method Interface 
- Native Method Library

```
Class Loader <==> JVM Memoery <==> Execution Engine
```

**스택 기반의 가상 머신 아키텍처**  
: JVM은 스택 기반 가상 머신 아키텍처로 설계  
: 피연산자를 저장하기 위한 레지스터가 없기 때문에 스택에 저장  



## Class Loader
: 자바 클래스 파일을 찾아 JVM 메모리에 로드하고 연결  

**단계**  
```
1. load :클래스 파일을 읽어 이를 JVM 메모리에 로딩

2. link
   2-1. verify  : bytecode verifier가 바이트코드의 유효성과 보안을 검증함 (sandbox)
   2-2. prepare : 메모리를 기본값으로 초기화하는 등 실행 준비를 함
   2-3. resolve : 심볼릭 레퍼런스를 실제 메모리 주소로 변환함

3. initialize : 정적 변수 값을 할당하고 정적 블록 실행해 클래스 초기화를 함

=> 문제가 없으면 실행 엔진으로 넘어감
```


**클래스 로딩 방식**    
- load-time dynamic loading : 클래스 로딩 중 참조되는 클래스도 로딩  
- run-time dynamic loading : 프로그램 실행 중 필요한 클래스 로딩   


**클래스 로더 종류**    
- Primordial : 가상 머신에 내장된 기본 클래스 로더
  - 부트 스트랩 클래스 로더 (Java 핵심 클래스)
  - 확장 클래스 로더
  - 시스템 클래스 로더 (사용자 애플리케이션 클래스, 외부 라이브러리)
- Non-Primordial : 사용자 정의 클래스 로더

```
부트 스트랩 로더를 통해 로딩된 클래스는 JVM의 생애 주기 동안 메모리에 상주함
확장 클래스 로더나 시스템 클래스 로더에 의해 로딩된 클래스는 필요없어지면 언로드됨
```

**클래스 언로드**  
: JVM 메모리에서 특정 조건에 따라 특정 클래스를 제거하는 과정  



## JVM Memory
: JVM은 다양한 메모리 영역을 가지며 영역별로 저장되고 관리되는 데이터가 다름

메모리 | 설명 
---|---|---
Stack | 스레드 별로 개별 스택을 갖음 (객체 참조 변수, 지역 변수, 메소드)
Heap  | 모든 스레드가 공유하는 영역 (객체 인스턴스, 배열)
Metaspace           | 클래스 메타데이터, 메소드 메타데이터, 클래스 변수
Native Method Stack | 네이티브 메소드 실행에 사용
PC Register         | 현재 실행 중인 JVM 명령어의 주소를 가르키는 레지스터



## Execution Engine
: JVM 메모리 공간에 적재된 바이트코드를 기계 코드로 변환하고 실행  

**구성 요소**
- Interpreter
- Just-In-Time Compiler
- Garbage Collector



## Native Method Interface
: 자바 코드가 네이티브 코드를 호출할 수 있게 해주는 인터페이스



## Native Method Library
: 운영체제에 의존적인 코드를 포함한 라이브러리