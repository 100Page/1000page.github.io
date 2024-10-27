---
order: 0.2
title: language
description: 고수준 언어
summary:
keywords:
- programming language
- high level language
- 프로그래밍 언어
- 고수준 언어
tags:
- program
- programming language
created_time: 2024-09-18 03:13
modified_time: 2024-10-26 22:16
---

# High Level Language
: 컴퓨터 하드웨어에 독립적이며 자연어와 유사해 사람에게 친숙한 프로그래밍 언어  
: 고수준 언어는 변환기를 통해 하드웨어 아키텍처에 맞는 기계어로 변환되어 실행됨  
: 변환 과정에서 구문 검사를 통해 문법적 오류나 실수를 사전에 방지함  
: 고수준 언어는 실행 방식, 타입 시스템, 패러다임 등에 따라 다양하게 분류됨  

**언어 분류**
- [실행 방식](#execution-based-languages)
- [타입 시스템](#type-system-based-languages)
- [패러다임](#paradigm-based-languages)
- [플랫폼 의존성](#platform-dependent-languages)


**시대별 주요 언어**

시대 | 언어
---|---
1950년대 | FORTRAN, LISP, COBOL
1960년대 | BASIC, PL/1, Algol68, Snobol, Simula67
1970년대 | Pascal, C, Smalltalk
1980년대 | Ada, Scheme, C++, Perl
1990년대 | Haskell, Python, Lua, Java, Ruby
2000년대 | C#, Scala, Clojure, Dart, Swift
2010년대 | Rust, Go, Kotlin


**시대별 언어 특징**
```
1950년대 기계적 특성을 제거하고 수학적 기호를 사용하는 언어 방식 연구
1957년에 최초로 수학적 기호를 사용한 포트란이라는 언어 등장
         => 포트란은 컴파일러를 통해 기계어로 변환

1959년에 두번째 고수준 언어인 코볼 언어 등장
         => 코볼은 영어와 유사한 구문을 도입

1964년에 초보자를 위한 언어로 베이직 등장
         => 베이직은 컴퓨팅 자원이 적게 필요해 최초로 개인용 컴퓨터에서 사용한 언어

1970년대 시스템 프로그래밍(편집기, 컴파일러, 운영체제 등)을 목적으로 하는 언어들이 개발됨
1973년에 운영체제를 작성할 목적으로 C 언어 등장 

1980년대 규모가 큰 프로그램의 복잡성을 관리하기 위한 언어들이 개발됨
         => C언어를 기반으로 객체 지향 기능을 추가한 C++

1990년대 인터넷과 웹의 발전으로 이에 맞는 언어들이 개발됨
         => 프로그래밍의 편의성과 속도가 보다 중요해짐
         => 자바스크립트는 이런 의도에 맞춰 설계됨
```



## Execution-based Languages
: 프로그래밍 언어를 실행하는 방식에 따라 분류  

종류 | 설명 | 언어
---|---|---
컴파일 언어 | 소스 코드를 기계어로 변환하고 실행하는 언어 | C, C++
인터프리터 언어 | 소스 코드를 즉석에서 해석하고 실행하는 언어 | Python, Ruby 
스크립트 언어 | 별도의 환경에서 인터프리터 언어와 유사하게 실행하는 언어 | Shell Script, JavaScript
트랜스파일 언어 | 소스 코드를 다른 언어로 변환해 실행하는 언어 | TypeScript
하이브리드 언어 | 컴파일과 인터프리팅 방식을 혼합해 실행하는 언어 | Java, Kotlin, C#
임베디드 언어 | 임베디드 시스템 환경에서 실행되도록 설계된 언어 | Ada, Lua, VHDL



### Scripting Language
: 스크립트 언어는 실행 환경에 따라 용도가 특화되어 있음  
: 일반적으로 인터프리터 방식으로 실행됨  
: 프로그램 제어나 자동화를 위해 사용하거나 프로그램에 내장되어 다른 프로그램과 상호 작용을 하기 위해 사용  
: 대부분의 스크립트 언어는 REPL 환경을 제공  


**작업 제어**    
- Unix : Shell Script(Bash)
- Microsoft Windows : VBScript
- Mac OS : AppleScript


**웹 애플리케이션**

분류 | 설명 | 언어   
---|---|---   
서버 사이드 스크립트 | 서버에서 실행되어 동적 콘텐츠 생성하는 언어 | PHP, ASP, JSP
클라이언트 사이드 스크립트 | 브라우저에서 실행되어 UI를 제어하는 언어 | JavaScript


**REPL**  
: Read-Eval-Print Loop  
: 표현식을 읽고 평가해 결과를 반환하고 이 작업을 반복하는 환경  

1. Read : 입력 값을 읽어 메모리에 저장
2. Eval : 입력 값을 평가하고 실행
3. Print : Eval로 인해 반환된 값을 출력
4. Loop : 1~3을 반복



## Type System-based Languages
: 프로그래밍 언어의 타입 시스템 특징에 따라 분류

- **타입 검사**
  - 정적 타입 언어
  - 동적 타입 언어 
- **타입 안전**
  - 강타입 언어
  - 약타입 언어
- **타입 시스템 특성**
  - 타입 선언 언어
  - 타입 추론 언어

종류 | 설명 | 언어
---|---|---
정적 타입 언어 | 컴파일 시점에 타입을 검사하는 언어 | Java, C++, Rust
동적 타입 언어 | 런타임에 타입을 검사하는 언어 | Lisp, Python, JavaScript
강타입 언어 | 엄격한 타입 규칙을 적용하는 언어 (암시적 타입 변환 제한) | Java, Haskell, Rust
약타입 언어 | 유연한 타입 규칙을 적용하는 언어 (암시적 타입 변환 허용) | JavaScript
타입 선언 언어 | 명시적으로 타입을 지정해야 하는 언어 | C, C++, Java
타입 추론 언어 | 컴파일러가 자동으로 타입을 추론하는 언어 | Haskell, Scala, Kotlin


**언어 별 분류**

타입 | 정적 타입 | 동적 타입
---|---|---
**강타입** | Java, Scala, Kotlin, Rust | Ruby, Python, Elixir
**약타입** | C, C++ | JavaScript, Perl, Lua



## Paradigm-based Languages
: 프로그래밍 언어의 패러다임에 따라 분류  

- [명령형 언어](#imperative-languages)
- [선언형 언어](#declarative-languages)
- [동시성 언어](#concurrency-languages)



### Imperative Languages
: 코드의 순차적 흐름과 상태 변화를 중심으로 작동하는 언어  

종류 | 설명 | 언어
---|---|---
절차적 언어 | 절차적인 구조를 통해 순차적으로 실행하는 언어 | C, Pascal
객체 지향형 언어 | 데이터와 기능을 객체 단위로 제어하는 언어 | Java, C++, Python
이벤트 기반 언어 | 이벤트 발생에 따라 흐름을 제어하는 언어 | JavaScript


### Declarative Languages
: 무엇을 해야하는가에 대한 결과를 명시하고 어떻게 하는가에 대한 절차는 명시하지 않는 언어  
: 결과를 달성하는 방법은 런타임이나 컴파일러가 처리  

종류 | 설명 | 언어
---|---|---
논리형 언어 | 논리적 규칙과 사실관계를 기반으로 문제를 해결하는 언어 | Prolog
함수형 언어 | 수학적 함수 개념을 바탕으로 상태 변경없이 문제를 해결하는 언어 | Lisp, Haskell, Erlang
반응형 언어 | 데이터 흐름과 상태 변화에 반응하는 언어 | RxJS, Elm, ReactiveX



### Concurrent Language
: 여러 작업이 동시에 실행되는 언어로 멀티스레딩, 병행 프로그래밍, 비동기 작업을 지원

종류 | 설명 | 언어
---|---|---
동시 병행 언어 | 여러 작업을 동시에 병렬적으로 수행하도록 설계된 언어 | OpenMP, Go, Rust
분산형 언어 | 여러 시스템 간 작업을 분산해 처리하는 언어 | Erlang, Elixir, Go



## Platform Dependent Languages
: 프로그래밍 언어가 특정 플랫폼에 의존적인지에 따라 분류  
: 플랫폼에 독립적이면 이식성이 높으며 의존적이면 이식성이 떨어짐  
: 플랫폼에 독립적이면 하드웨어 직접 접근이 불가능하며 의존적이면 직접 접근이 가능함  

**platform**  
: 하드웨어, 시스템, 애플리케이션 등이 실행되는 환경  


종류 | 설명 | 언어
---|---|---
플랫폼 독립 언어 | 다양한 플랫폼에서 동일한 소스 코드로 실행 가능한 언어 | Java, Python, JavaScript
플랫폼 의존 언어 | 특정 플랫폼에 최적화되어 있는 언어 | Assembly, C, Objective-C