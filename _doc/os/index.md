---
order: 3
title: os
description: 운영체제 (인덱스)
summary:
keywords:
- os
- operating system 
- 운영체제
tags:
- index
- os
created_time: 2024-09-08 07:10
modified_time: 2024-10-27 16:01
---

# Operating System 
: 하드웨어와 소프트웨어 사이 통신을 관리하고 하드웨어와 사용자 간 인터페이스를 제공  
: 하드웨어 자원을 효율적으로 관리하고 소프트웨어의 실행을 위한 환경을 지원  

- **[OS Component](./os-component.md)**
  - Bootloader
  - Kernel
  - Shell
  - System Program
  - UI (CLI, GUI)
- **[OS Concept](./os-concept.md)**
  - Process
  - Thread
  - Concurrency Control
    - Synchronization
    - Deadlock
  - Storage
    - File
    - File System
  - Memory
  - I/O
  - Network Communication
  - Virtualization
- **OS Function**
  - [Interrupt](./interrupt.md)
  - [System Call](./system-call.md)
  - [Process Management](./process-management.md)
  - [Memory Management](./memory-management.md)
  - [File System Management](./file-system-management.md)
  - [Device Management](./device-management.md)
  - [Network Management](./network-management.md)
  - [Security Management](./security-management.md)
- **OS Processing Model**
  - Multiprogramming
  - Time-sharing
  - Multitasking
  - Batch Processing
  - Real-time Processing
  - Parallel Processing
  - Distributed Processing
- **Performance Optimization**
  - Caching 
  - Buffering
  - Spooling
  - Prefetching
  - Memory Mapping
  - DMA (Direct Memory Access)


**사용에 따른 분류**
- Server OS
  - UNIX
  - Linux
  - Windows Server
- Network OS
  - Cisco IOS
  - Juniper JUNOS
- Mobile OS
  - Android
  - iOS
- Desktop OS
- Embedded OS
- Real-Time OS


**history**
```
초기 컴퓨터는 프로그램이 하드웨어에 내장되어 하나의 작업만 수행할 수 있는 기계로
작업을 수행하기 위해 사람이 수동으로 관리하고 조작해야 했음

폰 노이만 아키텍처 도입으로 하드웨어와 소프트웨어가 분리되어 
프로그램이 소프트웨어에 내장되면서 컴퓨터가 여러 작업을 처리할 수 있게 되어
이를 효율적으로 관리하는 시스템의 필요성이 커짐

또한 하드웨어를 직접 조작하기 어려워 이를 추상화하는 계층의 필요성이 대두되고
비싼 컴퓨터 자원을 효율있게 사용하기 위해 여러 사용자가 동시에 접근 가능한 시스템이 요구됨

이러한 배경에서 여러 작업을 순차적으로 실행하고 관리할 수 있는 일괄 처리 시스템이 등장하였고
이를 운영체제의 초기 형태로 볼 수 있음
```