---
order: 0.11
title: math
description: 이산 수학 - 논리
tags:
- discrete mathematics
created_time: 2024-09-18 08:02
modified_time: 2024-10-05 18:39
---

# Logic
: 올바른 추론에 대한 과정  
: 논리학은 명제로 부터 출발  

**추론**  
: 참이라고 알려져 있는 사실로부터 논리적인 과정을 거쳐 참인 사실들을 이끌어 내는 과정  

**종류**
- 비형식 논리
  - 일상 언어 논리
  - 귀납 논리
  - 비고전 논리
    - 다치 논리
    - 퍼지 논리
- 형식 논리 (기호 논리) 
  - 이진 논리
  - 명제 논리 
  - 술어 논리


**이진 논리**  
: 참과 거짓이라는 두 개의 진리 값을 갖는 논리 체계

**명제 논리**  
: 명제들 간의 관계와 연산을 다루는 논리 체계

**술어 논리**  
: 개체와 속성의 관계를 다루고 명제 논리를 확장한 논리 체계



## Proposition  
: 명제란 명제 논리를 구성하는 요소로 참과 거짓을 구별할 수 있는 수학적 식이나 문장을 의미  

**명제의 진리값**  
: 명제가 타당하면 참이라는 값을 갖음  
: 명제가 타당하지 않으면 거짓이라는 값을 갖음   

**종류**
- 단순명제 : 하나의 식이나 문장
- 합성명제(= 복합명제) : 두 개 이상 단순명제를 연산자로 연결
- 항진명제 : 항상 참인 명제
- 모순명제 : 항상 거짓인 명제
- 조건명제

 

### 명제 연산
: 논리 연산자를 통해 명제를 결합  

**연산자**

논리 연산 | 연산 | 연산자
---|---|:---:
[부정](#negation) | NOT 연산 | ~
[논리곱](#conjunction) | AND 연산 | ∧
[논리합](#disjunction) | OR 연산  | ∨
배타적 논리합 | XOR 연산 | ⊕


**명제함수**  
: 조건 값에 따라서 참일 수도 거짓일 수도 있는 경우



#### Negation
: 주어진 명제를 부정  
: ~p 라고 쓰고 p가 아니다라고 읽음  

p | ~p
---|:---:
T | F
F | T 

x | y | ~p
---|---|:---:
T | T | F
T | F | F
F | T | T
F | F | T


#### Conjunction
: 주어진 복수의 명제가 모두 참인지를 나타내는 논리 연산  
: p ∧ q 라고 쓰고 p이고 q라고 읽음  

p | q | p ∧ q
---|---|:---:
T | T | T 
T | F | F
F | T | F
F | F | F


#### Disjunction
: 주어진 복수의 명제가 하나라도 참인지를 나타내는 논리 연산  
: p ∨ q 라고 쓰고 p또는 q라고 읽음  

p | q | p ∧ q
---|---|:---:
T | T | T 
T | F | T
F | T | T
F | F | F