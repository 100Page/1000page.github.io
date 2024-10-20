---
order: 0.13
title: java
description: 자바 가상 머신 구현체
summary:
keywords:
- java
- jvm
- java virtual machine
- jvm implementation
- 자바
- 자바 가상 머신
- 자바 가상 머신 구현체
tags:
- language
- java
created_time: 2024-10-10 13:18
modified_time: 2024-10-20 13:38
---

# JVM Implementation
: JVM 구체적인 구현체  

**구현체**
- HotSpot JVM
- OpenJ9 JVM
- GraalVM


JDK | JVM
---|---
Oracle JDK | HotSpot JVM
OpenJDK    | HotSpot JVM
Temurin    | HotSpot JVM, OpenJ9 JVM 선택
Zulu       | HotSpot JVM
Corretto   | HotSpot JVM



## HotSpot JVM
: OpenJDK와 Oracle JDK에서 사용되는 JVM 구현체로 Oracle에서 관리  
: JIT 컴파일러 사용  


## OpenJ9 JVM
: IBM이 개발한 경량화된 JVM 구현체로 현재는 Eclipse 재단에서 관리  
: 메모리 사용량이 적으며 빠른 시작 속도가 특징으로 클라우드 네이티브 환경에 최적화  


## GraalVM
: Oracle이 개발한 JVM 구현체로 다중 언어 지원과 고성능을 제공  
: 다양한 언어를 실행할 수 있는 멀티 런타임, 네이티브 이미지 생성 등의 고유 기능 제공  
: AOT 컴파일 지원  