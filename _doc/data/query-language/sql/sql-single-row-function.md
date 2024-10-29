---
order: 0.24
title: sql
description: SQL Single-Row Function
summary:
keywords:
- database language
- guery language
- structured guery language
- sql
- sql function
tags:
- sql
- language
created_time: 2024-10-29 22:52
modified_time: 2024-10-29 23:00
---

# SQL Single-Row Function
= Scalar Function  
: 각 행에 대해 하나의 결과를 반환하는 함수들  

- [숫자 함수](#numeric-function)
- [문자 함수](#string-function)
- [날짜 함수](#date-function)
- [형변환 함수](#conversion-function)
- [일반 함수](#general-function)



## Numeric Function
: 숫자 데이터를 받아 피연산자로 연산한 결과 반환  

함수 | 설명
---|---
ABS(n)         | 절대 값 반환
CEILING(n)     | 숫자를 올림하여 반환
FLOOR(n)       | 숫자를 내림하여 반환
POWER(n, p)    | n의 p 거듭제곱한 결과 반환
ROUND(n, d)    | 숫자 n을 소수점 이하 d자리에서 반올림하여 반환
TRUNCATE(n, d) | 숫자 n을 소수점 이하 d자리에서 잘라내어 반환



## String Function
: 문자열 데이터를 받아 피연산자로 연산한 결과 반환  

함수 | 설명
---|---
UPPER(c)          | 문자를 대문자로 변환하여 반환
LOWER(c)          | 문자를 소문자로 변환하여 반환
TRIM(c)           | 양쪽 공백 문자 제거 후 남은 문자 반환  
SUBSTR(c, n1, n2) | 문자의 n1 위치에서 n2 까지 길이 만큼 잘라낸 결과 반환
CHAR_LENGTH(c)    | 문자열 길이 반환
POSITION(c)       | 문자열 내 특정 서브스트링 위치 반환
CONCAT(c1, c2 ..) | 주어진 문자열을 결합하여 반환


**숫자 반환 함수**
: 일부 함수는 결과를 숫자형으로 반환  

함수 | 설명
---|---
LENGTH(c)         | 문자의 길이 반환
ASCII(c)          | 문자의 아스키 코드 값 반환



## Date Function

함수 | 설명
---|---
CURRENT_DATE      | 현재 날짜를 반환
CURRENT_TIME      | 현재 시간을 반환
CURRENT_TIMESTAMP | 현재 일자와 시간 반환
EXTRACT(t)        | 날짜 또는 시간의 특정 부분을 추출
DATE_TRUNC(t, u)  | 특정 단위로 날짜를 절단
INTERVAL          | 특정 시간 간격을 나타내는 값



## Conversion Function

함수 | 설명
---|---
CAST(t)             | 값을 주어진 데이터 타입으로 변환
COALESCE(v1, v2 ..) | NULL이 아닌 첫 번째 값을 반환



## General Function

함수 | 설명
---|---
NULLIF(v1, v2)   | 두 값이 같으면 NULL을 반환하고 아니면 첫 번째 값을 반환
GREATEST(v1, v2) | 주어진 값들 중 가장 큰 값을 반환
LEAST(v1, v2)    | 주어진 값들 중 가장 작은 값을 반환