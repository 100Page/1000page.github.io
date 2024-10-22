---
order: 0.1
title: hardware
description: 마더보드
summary:
keywords:
- computer
- hardware
- motherboard
- mainboard
- 마더보드
tags:
- hardware
created_time: 2024-09-25 00:54
modified_time: 2024-10-22 14:52
---

# Motherboard
= Mainboard, System board, Base board  
: 하드웨어 구성 요소들을 연결하고 제어하는 회로 기판  
: 외부 전원 공급 장치와 내부 하드웨어 사이의 인터페이스 역할  
: CPU, 메모리, 그래픽 카드, 네트워크 카드 등이 부착되어 있으며 컴퓨터 내부에 전력을 공급  
: CPU, 메모리, 주변 장치 간 통신이 가능하도록 인터페이스를 제공하고 관리  
: 전원 관리, 온도 모니터링, 하드웨어 상태 모니터링 기능 제공  

**구성 요소**
- Motherboard Interface : 컴포넌트 간 연결을 위한 표준 규격
  - SATA
  - PCIe
  - USB
- Motherboard Component 


**동작 순서**
```
1. 전원 공급 : 전원 공급 장치에 의해 마더보드에 전력 공급
2. 하드웨어 초기화 : 하드웨어 주요 구성 요소 초기화 (BIOS/UEFI)
3. 인터페이스 활성화 : 포트와 커넥터가 활성화되어 주변 장치와 연결
4. 펌웨어 부팅
5. 운영체제 부팅
```

**마더보드 다이어그램**  
https://commons.wikimedia.org/wiki/File:Motherboard_diagram.jpg



## Motherboard Component
: 마더보드의 물리적 구성 요소들  
: 마더보드의 포트와 커넥터는 마더보드 인터페이스 구현체  

- Power Supply
- CPU (= CPU Socket)
- Chipset
- RAM Slot
- Slot
  - PCIe
  - AGP
  - PCI
- Port & Connector
  - USB
  - Ethernet
  - VGA
  - Serial
  - Parallel
  - PS/2
- Storage Interface
  - SATA
  - IDE
- Bus
- Fan Header



### Power Supply
: 전원 공급 장치를 통해 구성 요소들에게 전원 공급  
: 전원 공급 장치는 콘센트 플러그나 내부 배터리에 연결됨  



### Chipset
: 구성 요소들 제어하고 관리하는 집적 회로  
: 최근 CPU에는 칩셋 기능이 일부 탑재되어 칩셋의 역할이 축소됨  

**Northbridge**  
: AGP, PCI 슬롯 등을 연결하고 제어  
: CPU가 빠르게 메모리에 접근하도록 메모리 컨트롤러를 보유  
: 노스브릿지의 기능이 CPU에 내장되어 거의 모든 칩셋은 사우스브리지로 분류됨    

**Southbridge**   
: 입출력장치 제어  
: USB 포트, 슬롯 등을 제어  



### Bus
: 구성 요소간 통신을 하기위해 설계된 회로  
: 전송 가능한 데이터 양이 많을 수록 버스 속도가 빠름  

**Front Side Bus**  
: CPU와 노스브릿지를 연결하는 버스  