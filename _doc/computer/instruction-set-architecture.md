---
order: 0.33
title: computer
description: 명령어 세트 아키텍처
summary:
keywords:
- computer
- computer architecture
- isa
- instruction set architecture
- 명령어 세트 아키텍처
tags:
- computer
- architecture
created_time: 2024-09-16 08:08
modified_time: 2024-11-22 21:55
---

# ISA
Instruction Set Architecture  
: 하드웨어와 소프트웨어 사이의 인터페이스를 정의하는 추상 모델  
: 프로세서가 이해하고 실행 가능한 명령어와 명령어가 실행 방식을 정의한 명세    
: ISA에 정의되지 않은 명령어는 프로세서가 이해하지 못하므로 실행할 수 없음  
: ISA 구현은 프로세서의 회로에 구현되고 회로에 의해 명령어가 실행됨  

- [ISA 구성 요소](#isa-component)
- [ISA 설계 방식](#isa-design)



## ISA Component
: 하드웨어와 소프트웨어 간의 상호작용을 위해 프로세서가 갖추어야 할 핵심 구성 요소들  
: ISA는 구성 요소들이 어떻게 동작하고 상호작용하는지에 대해 규칙과 방법을 정의  

- [명령어 세트](#instruction-set)
- [데이터 타입](#data-type)
- [레지스터](#register)
- [메모리 구조](#memory-structure)
- [인터럽트와 예외 처리](#interrupt-and-exception-handling)



## ISA Design
: ISA 설계는 프로세서가 지원할 명령어 세트를 정의하고 이 명령어를 어떻게 실행할 것인지 정의  


**데이터 처리 방식**  
: ISA의 메모리 접근 철학으로 연산에 필요한 데이터를 어디서 읽고 결과를 어디에 저장할 것인지 정의  

종류 | 설명
---|---
Memory-Memory Architecture   | 메모리 간 연산을 지원하는 구조
Register-Memory Architecture | 레지스터와 메모리 간 연산을 지원하는 구조
Load-Store Architecture      | 레지스터 간 연산만 수행하고 메모리와의 상호작용은 별도의 명령어로 처리


**명령어 처리 방식**  
: ISA의 명령어 실행 철학으로 명령어의 복잡도와 실행 방식을 정의  
: 이는 프로세서의 성능과 효율성에 영향을 미침  

- [CISC](#cisc)
- [RISC](#risc)
- [VLIW](#vliw)
 

**ISA 명세**
: 특정 ISA를 구현하기 위한 구체적인 설계서로 프로세서 제조사에서 설계함

