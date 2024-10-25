---
order: 0.2
title: programming language
description: 프로그래밍 언어
summary:
keywords:
- program
- programming language
- 프로그램
- 프로그래밍 언어
tags:
- program
- programming language
created_time: 2024-09-12 06:36
modified_time: 2024-10-25 19:33
---

# Programming Language
: 사용자의 의도를 압축-추상화하여 컴퓨터에게 전달하는 명령 집합  
: 프로그램을 작성하기 위한 구문과 규칙 체계  

**구성 요소**
- [Language Concept](./concept/index.md)
  - Type System
  - Scope
  - Memory Management
  - Error Handling
  - Module System
  - Binding & Linking 
- [Language Syntax](./syntax/index.md)
  - Lexical Structure
  - Control Flow
  - Data Structure
  - Procedures



## Programming Language Hierarchy
: 프로그래밍 언어는 추상화 수준, 실행 방식, 패러다임, 사용 목적 등 다양한 기준으로 분류됨  
: 언어는 특정 요구 사항과 목적을 위해 만들어지고 시간이 지나면서 다른 패러다임을 받아들이고 기능이 확장됨  
: 때문에 언어는 하나의 분류에 속하는게 아니라 다중 분류를 가짐  

> 기계어 > 어셈블리어 > 고급 언어 > 시각적 언어


**history**
```
초기 프로그래밍은 기계어를 사용했으나 기계어를 직접 작성하기 어려워 이를 위해 어셈블리 언어가 개발
어셈블리 언어는 어셈블러를 통해 한 번에 한 줄씩 기계어로 변환됨 (인터프리터와 다름)

1950년대 전체 소스 코드를 한 번에 기계어로 변환하는 컴파일러가 등장
컴파일러는 작업 속도는 빠르지만 프로그램이 수정되면 컴파일 과정을 다시 거쳐야하는 단점이 존재

1960년대 소스 코드를 한 줄씩 해석하고 즉시 실행하는 인터프리터가 개발됨
```


- **[저수준 언어](./low-level-language.md)**
  - 기계어
  - 어셈블리어
- **[고수준 언어](./high-level-language.md)**
  - [타입 시스템](./type-based-language.md)
    - 정적 언어/동적 언어
    - 강타입 언어/약타입 언어
    - 타입 선언 언어/타입 추론 언어
  - [실행 방식](./execution-based-language.md)
    - 컴파일 언어
    - 인터프리터 언어
    - 스크립트 언어
    - 트랜스파일 언어
    - 하이브리드 언어
  - [플랫폼 의존성](./platform-based-language.md)
    - 플랫폼 독립 언어
    - 플랫폼 의존 언어  
  - 패러다임
    - [명령형 언어](./imperative-language.md)
      - 절차적 언어  
      - 동시 병행 언어
      - 객체 지향형 언어
      - 이벤트 기반 언어
      - 분산형 프로그래밍
    - [선언형 언어](./declarative-language.md)
      - 함수형 언어
      - 논리형 언어 
      - 반응형 프로그래밍
  - 기타
    - [도메인 특화 언어](./domain-specific-language.md)
    - [메타 프로그래밍 언어](./meta-programming-language.md)
    - [계약 지향 프로그래밍 언어](./contract-oriented-language.md)
    - [글루 언어](./glue-language.md)
    - 에소테릭 언어
- [시각적 언어](./visual-language.md)


\+ [마크업 언어](./markup-language.md)

```
프로그래밍 언어는 데이터를 변환하는 반면  
마크업 언어는 데이터를 표현하므로 마크업 언어가 프로그래밍 언어의 하위 집합에 속하지 않음
```


**프로그래밍 언어 분류**   
https://en.wikipedia.org/wiki/Timeline_of_programming_languages  
https://en.wikipedia.org/wiki/List_of_programming_languages_by_type  