---
order: 0.1
title: python
description: 파이썬 프로그래밍 언어
summary:
keywords:
- python
- python programming language
- 파이썬 프로그래밍 언어
tags:
- language
- python
created_time: 2024-11-26 00:32
modified_time: 2024-11-26 01:06
---

# Python Programming Language
: 절차형, 함수형, 객체지향 패러다임을 지원하는 멀티 프로그래밍 언어  
: 인터프리터 언어로 실행 전에 바이트코드로 컴파일하는 중간 과정이 포함됨  
: 변수의 데이터 타입을 명시하지 않는 동적 타이핑 언어로 실행 시점에 인터프리터가 타입을 결정함  
: 정수, 문자, 함수, 클래스 등 모든 것이 객체로 취급되어 속성과 메소드를 가짐  

```
           컴파일러        인터프리터
python code  -->  byte code  -->  machine code
   (*.py)          (*.pyc)    
```


- Variable
- Keyword
- Operator
- Expression
- Statement
- Function
- Class
- Object
- Data Type
- Exception Handling



## Python Encoding

버전 | 기본 인코딩 | 비고
:---:|:---:|---
python2.x  | ASCII | ASCII 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요
python3.x  | UTF-8 | UTF-8 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요

```python
# -*- coding: UTF-8 -*-
```



## Python Indentation
: 파이썬은 들여쓰기(스페이스, 탭)를 사용해 코드 블럭을 정의함  
: 스페이스와 탭을 섞어 사용하면 오류가 발생하며 스페이스 경우 4칸을 사용하는 것이 표준  

```python
if Ture:
    print('ture')
else:
    print('false')
```

## Python Semicolon
: 일반적으로 세미콜론은 사용하지 않지만 한 행에 여러 문장을 사용할 경우에는 세미콜론을 사용함  

```python
print('hello'); print('world')
```