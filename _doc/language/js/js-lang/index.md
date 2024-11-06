---
order: 0.1
title: javascript
description: 자바스크립트 언어
summary:
keywords:
- js
- javascript
- ecmascript
- 자바스크립트
tags:
- language
- javascript
created_time: 2024-11-06 08:14
modified_time: 2024-11-06 11:10
---

# JavaScript
: 멀티 패러다임 언어 (명령형, 함수형, 객체기반-지향형)  
: 프로토타입 기반 객체 지향 언어  
: 데이터 타입을 명시적으로 선언하지 않는 동적 타입 언어  

- [Identifier](#js-identifier)
- [Semicolon](#js-semicolon)
- [Strict Mode](#js-strict-mode)
- [Variable](./js-variable.md)
- [Keyword](./js-keyword.md)
- [Operator](./js-operator.md)
- [Expression](./js-expression.md)
- [Statement](./js-statement.md)
- [Data Type](./js-data-type.md)
  - [Object Data Type](./js-data-type-object.md)
  - [Native Object List](./js-object/index.md)
- [Coercion & Conversion](./js-coercion-conversion.md)
- [Exception](./js-exception-handling.md)
- [Array](./js-array.md)
- [Function](./js-function.md)
  - [Function List](./js-function-list.md)
- [Sync & Async](./js-sync-async.md)


**객체기반-지향형**
- 객체 기반 : 내장된 객체 사용  
- 객체 지향 : 객체를 정의해 사용  


**영향받은 언어**

언어 | 영향
---|---
Lisp    | 변수 스코프
C, Java | 연산자, 표현식, 데이터 타입, 객체 관계
Self    | 프로토타입 기반 객체, 프로토타입 상속(위임)
AWK     | 속성 반복, 함수 선언
HyperTalk    | 이벤트
Lisp, Scheme | 일급 함수, 클로저  
Peal, Python | 문자열, 배열, 정규 표현식



## JS Identifier
: 변수, 함수, 프로퍼티 구분 및 사용을 위해 알파벳 문자, 숫자, 일부 기호로 만든 이름  
: 식별자의 첫 글자는 문자와 언더스코어 및 달러 기호만 사용 가능  
: [예약어](./js-keyword.md)와 특별한 값은 변수와 함수 식별자로 사용 불가능하나 프로퍼티 식별자로는 사용 가능  
: [내장 객체](./js-data-type-object.md#native-object) 명으로 식별자 사용이 가능하므로 주의해야 함  

**식별자로 사용 불가능한 특별한 값**  
- [undefined](./js-data-type.md#undefined)
- [null](./js-data-type.md#null)
- [NaN](./js-data-type.md#nan)
- [Infinity](./js-data-type.md#infinity)

**식별자로 사용 불가능한 리터럴**   
- true
- false

```js
// ! 주의
const Date = 0;
const date = new Date();
```



## JS Semicolon
: 자바스크립트의 세미콜론은 문장 끝을 구분하는 문장 구분자로 필수가 아님  
: 세미콜론을 명시하지 않으면 자바스크립트 엔진이 세미콜론을 자동으로 추가함  

```js
// 문장으로 끝날 경우 세미콜론 사용
const num = 1;
const arr = [];
const fn = function() {};
const fn = () => {};
const obj = {};

do{} while(true);

// 블록문에는 사용하지 않음
if(true) {}
function fn() {}
```


**자동 세미콜론 삽입**  
: Automatic Semicolon Insertion(ASI)  

1. 소스 코드를 좌측에서 우측으로 파싱시 문제가 되거나 허용하지 않는 토큰을 발견하면 자동 삽입
2. 소스 코드를 좌측에서 우측으로 파싱시 토큰의 입력 스트림 끝에 도달하면 자동 삽입
3. 소스 코드를 좌측에서 우측으로 파싱시 ++, --, continue, break, return, yield, module 키워드를 만나면 자동 삽입

```js
// 1. 세미콜론 자동 삽입
const arr = [] // ;

// 2. 세미콜론 자동 삽입
console.log() // ;

// 3. 세미콜론 자동 삽입
const fn = function() {
  return // ;
}


// 세미콜론 자동 삽입으로 인한 오류
const add = (a, b) => {
  return // ;
  {
    result: a + b
  }
};

const result = add(1, 2);
console.log(result);


// 모든 줄바꿈에 세미콜론 자동 삽입 아님
const getNum = () => 10
const result
= getNum()
[1, 2, 3].forEach(console.log)


// 한 행에 여러 문장을 사용할 경우 세미콜론 명시 필수
let a, b, c
a = 1; b = 2; c = 3;

for( ; ; ) {}
```



## JS Strict Mode
: 자바스크립트를 보다 명확하게 실행하기 위해 ES5부터 도입  
: 실행 모드를 제어하는 `use strict` 문자열 지시자를 삽입해 엄격 모드 실행

**제한 사항**
- 변수 키워드를 선언 필수
- 8진수 리터럴 사용 불가
- 블록문에서 함수를 선언 불가
- 일반 함수에서 this는 undefined
- arguments 사용 제한  
- eval() 안에서 변수나 함수 선언 불가
- with 문 사용 불가
- delete 연산자를 통한 삭제 불가
- eval과 arguments는 변수명으로 사용 불가
- 예약어 식별자로 사용 불가


```js
<script>
  'use strict';
</script>


function fn() {
  'use strict';

  // 변수 선언 없이 사용 불가
  // num = 0;

  // 블록문에서 함수를 선언하면 오류
  // { function f() {}; }

  // 함수 표현식으로 우회 가능
  { const f = function() {}; }

}


// 모듈에서는 자동으로 엄격 모드로 적용됨
export default fn() {};
```