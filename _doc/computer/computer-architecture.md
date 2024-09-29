---
order: 1.4
title: computer
description: 컴퓨터 아키텍처 (폰 노이만 모델)
tags:
- computer
- computer architecture
- von neumann
created_time: 2024-09-28 11:43
modified_time: 2024-09-29 10:21
---

# Computer Architecture
: 컴퓨터를 구성하는 하드웨어들의 상호작용에 대한 설계  

**컴퓨터 구조**
- Von Neumann Architecture
- Harvard Architecture

**명령어 세트 아키텍처**
- RISC
- CISC 

**프로세서 아키텍처**
- Scalar processors
- Superscalar processors
- VLIW processors

**메모리 구조**
- Cache memory system
- Virtual memory system

**병렬 처리 아키텍처**
- SISD
- SIMD
- MISD
- MIMD



## Von Neumann Architecture
: 1945년 폰 노이만이 제안한 컴퓨터 아키텍처  
: 서브 시스템을 결합해 컴퓨터를 구성하고 메모리에 데이터와 명령어를 동일한 형식으로 저장하는 방식 제시  
&nbsp;(폰 노이만은 개념만 제시했고 데이터를 비트로 표현하는 방식은 1948년 클로드 섀넌이 정립)

**history**
```
초기 컴퓨터는 명령어를 하드웨어에 내장해 사용했는데 (논리 회로에 저장)  
고정된 방식으로 동작하므로 작업 처리를 고속으로 수행하는 장점이 있으나
프로그램이 수정되면 하드웨어를 교체해야 하는 문제가 있었음  

폰 노이만 아키텍처는 프로그램이 메모리에 저장되므로 프로그램을 변경하기 용이하고 
프로그램을 수정해 사용하므로 재사용이 가능해짐
```


**서브 시스템**
- Processor : 데이터와 명령어를 처리하는 장치
- Memory : 프로세서와 직접 통신하며 데이터와 명령어를 임시로 저장하는 장치
- Secondary Memory : 데이터와 명령어를 영구적으로 저장하는 장치
- Input/Output Devices


**동작 방식** 
1. 프로그램은 영구 저장 장치에 보관
2. 프로그램 실행시 제어 장치가 명령어를 메인 메모리로 복사
3. 연산 장치가 메인 메모리에 적재된 명령어와 데이터를 연산하고 최종 결과를 출력 장치로 보냄

> Fetch => Decode => Execute

```
- Fetch : 메모리에서 한 번에 하나의 데이터나 명령어를 가져옴 
- Decode : 가져온 명령어를 해석
- Execute : 연산 장치를 통해 명령어 실행
```


**문제점**  
: 데이터와 명령어는 데이터 버스를 통해 이동하는데 폰 노이만 구조는 데이터 버스가 하나여서 순차적 처리만 가능 (명령어와 데이터를 동시에 실행하지 못함)  
: 데이터와 명령어가 동일한 메모리 공간에 저장되어 데이터와 명령어가 충돌될 수 있음 



## Harvard Architecture
: 폰 노이만 아키텍처 문제점을 보완한 아키텍처  
: 데이터와 명령어가 저장되는 메모리 영역을 분리하고 각 영역마다 시스템 버스가 별도 존재  
: 영역이 물리적으로 분리되어 데이터와 명령어를 동시에 처리할 수 있음  
: 메모리와 버스가 분리되어 하드웨어 설계가 복잡하고 자원이 많이 필요해 특수 목적 컴퓨터에 사용  

```
- Fetch : 데이터 버스나 명령어 버스를 통해 데이터나 명령어를 동시에 가져옴 
- Decode : 가져온 명령어를 해석하고 필요하면 데이터를 가져옴
- Execute : 연산 장치를 통해 명령어 실행
```


**Modified Harvard Architecture**  
: 하버드 아키텍처의 변형으로 CPU 내부에 데이터 캐시와 명령어 캐시로 분리해 데이터와 명령어를 동시에 처리  
: 개인용 컴퓨터는 수정된 하버트 아키텍처를 사용  