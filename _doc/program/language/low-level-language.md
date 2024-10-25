---
order: 0.1
title: programming language
description: 저수준 언어
summary:
keywords:
- programming language
- machine language
- assembly language
- 프로그래밍 언어
- 저수준 언어
- 기계어
- 어셈블리어
tags:
- program
- programming language
created_time: 2024-09-17 02:30
modified_time: 2024-10-25 16:46
---

# Low Level Language
: 컴퓨터가 이해할 수 있는 프로그래밍 언어  
: 저수준 언어는 ISA에 정의된 명령어를 기반으로 작동  

**종류**
- [Machine Language](#machine-language)
- [Assembly Language](#assembly-language)


```
1. 특정 언어로 작성된 소스 코드 
2. 컴파일러나 인터프리터에 의해 소스 코드는 어셈블리어나 기계어로 변환
3. 어셈블리어는 어셈블러에 의해 기계어로 변환

ISA : 프로세서가 실행할 수 있는 명령어 정의
어셈블리어 : ISA에 정의된 명령어를 기호화한 것
기계어 : ISA에 정의된 명령어를 이진 형태로 표현한 것
```



## Machine Language
: CPU가 실행할 수 있는 이진 형태의 명령 집합  
: 프로세서 아키텍처별로 다른 기계어 형식을 가짐  
: 가독성을 위해 8진수나 16진수로 표현되기도 하나 실행시에는 2진수로 처리됨  
: 실행 속도가 매우 빠르고 하드웨어를 직접 제어할 수 있으나 사람이 직접 작성하기 어려움  

**구성 요소**
- Opcode 
- Operand


**x86 아키텍처**
```
ADD AL, 1 ; AL 레지스터에 1을 더함

0000 0100  1100 0001  
---------  ---------
  Opcode    Operand
```


**ARM 아키텍처**
```
ADD R0, R0, #1 ; R0 레지스터에 1을 더함

1110 00 0 0100  0 0000 0000 0000 0000 0001
--------------  --------------------------
    Opcode               Operand
```



## Assembly Language
= Symbolic Machine Code  
: 기계어를 기호화한 저수준 프로그래밍 언어  
: 1950년대 컴퓨터가 발전하며 복잡하고 작성하기 어려운 기계어를 대체하기 위해 탄생  
: 어셈블리어는 어셈블러를 통해 기계어로 변환되고 디스어셈블러를 통해 기계어를 어셈블리어로 변환함  

**구성 요소**  
- Instructions
- Labels
- Directives
- Comments

**mnemonic code**  
: 니모닉 코드는 어셈블리어에서 사용하는 명령어의 약어  
: 니모닉 코드는 ISA에 정의된 명령어와 대응함  

코드 | 설명
---|---
LEA  | 메모리 주소 이동  
MOV  | 메모리에 있는 데이터 이동   
ADD  | 데이터 더하기
SUB  | 데이터 빼기
INC  | 데이터 값 1 증가
DEC  | 데이터 값 1 감소
PUSH | 스택에 데이터 추가
POP  | 스택에 있는 데이터 제거하고 반환  
CALL | 프로시저 호출
JMP  | 분기
RET  | 프로시저에서 반환
...  | ...