---
order: 0.11
title: javascript
description: 자바스크립트 내장 객체
summary:
keywords:
- js
- js native object
- 자바스크립트 내장 객체
tags:
- language
- javascript
created_time: 2024-11-06 11:26
modified_time: 2024-11-06 12:08
---

# JS Native Object
: 자바스크립트 엔진에 내장된 기본 객체로 실행 환경과 상관없이 지원  
: 내장 객체는 자바스크립트 엔진이 시작될 때 자동으로 메모리에 로드됨  
: 일부 내장 객체의 메소드 경우 보안 문제로 서버 환경에서 제한될 수 있음  
: 일부 내장 객체는 생성자 함수를 통해 new 키워드를 사용한 인스턴스 생성을 지원  
: 대부분 내장 객체는 인스턴스 생성을 권장하지 않으며 리터럴로 사용하는 것이 효율적임  
: Date나 Typed Array 같은 내장 객체는 인스턴스 생성이 필수  
: Math와 JSON은 정적 내장 객체로 인스턴스 생성 불가능  

**기본 객체**
- [Object](./js-obj-object.md)
- [Function](./js-obj-function.md)
- [Boolean](./js-obj-boolean.md)
- [Symbol](./js-obj-symbol.md)
- [Error](./js-obj-error.md)


**숫자 및 날짜**
- [Number](./js-obj-number.md)
- BigInt
- [Math](./js-obj-math.md)
- [Date](./js-obj-date.md)


**텍스트**
- [String](./js-obj-string.md)
- [RegExp](./js-obj-regexp.md)


**컬렉션**
- [Array](./js-obj-array.md)
- Typed Array
  - Int8Array
  - Uint8Array
  - ... 

**데이터**
- JSON
- DataView
- ArrayBuffer
- SharedArrayBuffer
- [Atomics](./js-obj-atomics.md)

**제어**   
- [Generator](./js-obj-generator.md)

**국제화**
- [Intl](./js-obj-intl.md)

**기타**
- [Arguments](./js-obj-aguments.md)