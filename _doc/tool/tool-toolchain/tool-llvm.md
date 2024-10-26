---
order: 0
title: tool
description: 툴체인 - LLVM
summary:
keywords:
- tool
- toolchain
- llvm
tags:
- tool
created_time: 2024-10-26 01:08
modified_time: 2024-10-26 11:08
---

# LLVM
Low-Level Virtual Machine  
: 프로그래밍 언어를 컴파일하여 기계어로 변환하는 도구와 라이브러리 집합  
: 다양한 언어와 플랫폼을 지원하며 확장 가능한 컴파일러 툴체인과 최적화 도구 제공  
: C, C++, Swift, Rust, Kotlin Native 같은 언어에서 LLVM을 기반으로 컴파일됨  


**다운로드**  
https://releases.llvm.org/


**구성 요소**

요소 | 설명
---|---
LLVM Core Libraries | 코드를 LLVM IR로 생성하고 최적화하는 라이브러리
LLVM IR | 중간 언어, 중간 코드
Clang  | C, C++, Objective-C를 지원하는 컴파일러
LLVM Optimizer | 중간 코드를 플랫폼에 맞게 최적화하는 도구
LLDB | C/C++, Swift 등의 언어를 디버깅하는 도구
LLVM JIT | LLVM IR 생성없이 런타임에 코드를 컴파일해 실시간으로 실행하는 컴파일러



## LLVM IR
Intermediate Representation  
: LLVM에서 사용하는 중간 언어로 LLVM API 통해 언어를 독립적인 표현으로 컴파일한 상태  
: 다양한 언어를 중간 언어로 변환하고 최적화해 기계어로 변환함  

형식 | 설명
---|---
Human readable format (.ll) | 사람이 읽기 쉬운 텍스트 형식의 LLVM IR 파일로 학습용
Bitcode format (.bc) | 바이너리 형식으로 저장된 LLVM IR 파일로 최적화하기 위해 사용
In-memory format | 메모리에 로드된 LLVM IR


**단계**
```
소스 코드 컴파일 => LLVM IR => LLVM IR 최적화 => 기계어로 변환

Frontend
=> 소스 코드를 읽어 LLVM IR로 변환하는 단계 

Backend
=> 최적화된 LLVM IR를 기계어로 변환하는 단계
```