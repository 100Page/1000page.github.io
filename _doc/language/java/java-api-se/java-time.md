---
order: 0.5
title: java
description: Java Time API
summary:
keywords:
- java
- java api
- java time api
tags:
- language
- java
created_time: 2024-10-28 01:15
modified_time: 2024-10-29 22:48
---

# Java Time API
: Java 8부터 지원하는 ISO-8601 표준을 준수하는 시간과 날짜 관련 API ([JSR-310](https://jcp.org/en/jsr/detail?id=310))
: 스레드 안전성, 객체 불변성 등 기존 Date, Calendar 클래스 단점 및 문제점 보완  
: 모든 클래스는 불변이며 메소드 연산 결과로 새로운 객체를 반환함  


**ThreeTen-Extra**  
: java.time 확장 프로젝트    

https://www.threeten.org/threeten-extra/


**패키지**

패키지 | 설명
---|--- 
java.time          | 기본 패키지
java.time.chrono   | ISO 이외 달력 시스템을 위한 패키지
java.time.format   | 날짜와 시간 데이터의 구문 분석, 파싱, 형식화를 위한 패키지
java.time.temporal | 날짜와 시간 조작과 연산을 위한 패키지
java.time.zone     | 타임 존을 위한 패키지


**주요 클래스**

클래스 | 설명
---|---
LocalDate        | 타임존 없는 날짜를 나타냄
LocalTime        | 타임존 없는 시간을 나타냄
LocalDateTime    | 타임존 없는 날짜와 시간을 나타냄
ZonedDateTime    | 타임존 있는 날짜와 시간을 나타냄
Instant          | UTC 기준 1970년 1월 1일부터 경과된 시간을 나타냄
ZoneID           | 타임존(표준 시간대)을 나타냄
ZoneOffset       | UTC/Greenwich 기준 시차 메소드 제공
OffsetDateTime   | 타임존 오프셋이 있는 날짜와 시간 메소드 제공
Period           | 날짜 기반의 기간 메소드 제공 (년, 월, 일 단위)
Duration         | 시간 기반의 기간 메소드 제공 (일, 시, 분, 초 단위)
DateTimeFormatter| 날짜와 시간 데이터의 구문 분석과 형식화를 위한 메소드 제공 
TemporalAdjuster | 날짜와 시간을 조작하기 위한 메소드 제공 