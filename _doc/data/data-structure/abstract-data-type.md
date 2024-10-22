---
order: 0.1
title: data
description: 추상 자료형 (ADT)
summary:
keywords:
- data
- adt
- abstract data type
- 추상 데이터 타입
- 추상 자료형
tags:
- data
- data structure
created_time: 2024-09-12 07:13
modified_time: 2024-10-22 21:48
---

# Abstract Data Type
: 추상 자료형  
: 데이터의 구조와 행위를 정의  
: 데이터를 제어하는 기능에 대해 추상적인 정의만 제공함  
: 1960년대 데이터 추상화 개념이 등장했고 1980년대 객체 지향 프로그래밍이 발전하며 함께 발전함  


**특징**  
- 추상화 : 데이터 구조의 내부 구현을 숨기고 필수적인 특성만 노출
- 캡슐화 : 데이터와 데이터에 대한 연산을 하나로 묶음
- 유연성 : 내부 구현이 변경되어도 ADT를 사용하는 코드는 영향이 덜 함

**구성 요소**
- 데이터 : 데이터와 데이터 상태
- 연산 : 데이터를 조작하는 연산과 연산에 대한 명세

**분류**
- **선형 추상 자료형**
  - 스택
  - 큐
  - 데크 
  - 리스트
  - 우선순위 큐
- **비선형 추상 자료형**
  - 트리
  - 그래프
- **집합형 추상 자료형**
  - 집합
  - 맵
  - 딕셔너리


**구현체**

ADT | Implementation 
---|---
Stack | 배열 기반 스택, 연결 리스트 기반 스택
Queue | 배열 기반 큐, 연결 리스트 기반 큐, 원형 큐
Deque | 배열 기반 데크, 이중 연결 리스트 기반 데크
List  | 배열 기반 리스트, 단순 연결 리스트, 이중 연결 리스트
Priority Queue | 힙, 이진 탐색 트리, 정렬된 배열이나 리스트, 이진 인덱스 트리
Tree  | 이진 트리, 이진 탐색 트리, 균형 이진 트리, 트라이
Graph | 인접 행렬, 인접 리스트, 간선 리스트
Set   | 해시 집합, 트리 집합
Map   | 해시 맵, 트리 맵, 연결 해시 맵
Dictionary | 해시 테이블, 트리 맵



## Stack
: 순서가 있는 요소들의 집합으로 LIFO 원칙
: push, pop, top, isEmpty

**LIFO**  
: Last In, First Out  
: 마지막에 삽입된 요소가 가장 먼저 처리됨  


## Queue
: 순서가 있는 요소들의 집합으로 FIFO 원칙
: enqueue, dequeue, front, isEmpty

**FIFO**  
: First In, First Out  
: 가장 먼저 삽입된 요소가 가장 먼저 처리됨  


## Deque 
: 순서가 있는 요소들의 집합으로 양쪽 끝에서 삽입과 삭제가 가능  
: addFirst/addLast, removeFirst/removeLast, peekFirst/peekLast, isEmpty


## List
: 순서가 있는 요소들의 집합으로 요소의 중복이 가능하며 임의 위치에 접근 가능  
: add, remove, get, set, indexOf, contains, isEmpty


## Priority Queue
: 순서가 있는 요소들의 집합으로 각 요소가 우선 순위를 가지며 우선 순위가 높은 요소가 먼저 처리  
: insert, deleteMax/deleteMin, findMax/findMin, isEmpty  


## Tree
: 요소를 트리 형태로 표현  
: insert, delete, search, traverse  


## Graph
: 요소를 그래프 형태로 표현  
: addVertex, addEdge, removeVertex, removeEdge, getAdjacentVertices, isAdjacent  


## Set
: 순서가 없는 요소들의 집합으로 요소의 중복을 허용하지 않음  
: add, remove, contains, union, intersection, difference  


## Map
: 요소를 키/값 쌍으로 나타내며 각 키는 유일하며 하나의 값과 매핑됨  
: put, get, remove, containsKey/containsValue  


## Dictionary
: Map과 유사한 방식으로 일반적으로 더 단순한 인터페이스를 제공  
: put, get, remove, containsKey  