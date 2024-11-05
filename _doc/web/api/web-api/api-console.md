---
order: 1
title: web api
description: Web Console API
summary:
keywords:
- web
- web api
- console api
tags:
- web api
created_time: 2024-11-02 02:55
modified_time: 2024-11-04 21:49
---

# Console API
: 브라우저의 개발자 도구를 통해 디버깅, 로깅, 오류 추적 등을 지원하는 API  
: console은 전역 객체로 브라우저 개발자 도구의 콘솔과 연동  
: 스펙이 늦게 확정되어 일부 브라우저는 메소드 기능에 차이가 있을 수 있음  


**스펙**  
https://console.spec.whatwg.org/  


```webidl
namespace console {

  // Logging
  undefined assert(optional boolean condition = false, any... data);
  undefined clear();
  undefined debug(any... data);
  undefined error(any... data);
  undefined info(any... data);
  undefined log(any... data);
  undefined table(optional any tabularData, optional sequence<DOMString> properties);
  undefined trace(any... data);
  undefined warn(any... data);
  undefined dir(optional any item, optional object? options);
  undefined dirxml(any... data);

  // Counting
  undefined count(optional DOMString label = "default");
  undefined countReset(optional DOMString label = "default");

  // Grouping
  undefined group(any... data);
  undefined groupCollapsed(any... data);
  undefined groupEnd();

  // Timing
  undefined time(optional DOMString label = "default");
  undefined timeLog(optional DOMString label = "default", any... data);
  undefined timeEnd(optional DOMString label = "default");
}
```


**console.assert()**  
: 주어진 조건이 거짓인 경우 메시지 출력  

```js
console.assert(false, 'message');
```


**console.clear()**  
: 스택을 전부 지움  


**console.table()**  
: 객체의 데이터를 표 형태로 출력  


**console.trace()**  
: 스택 트레이스 출력  


**console.dir()**  
: 객체의 속성을 계층 구조로 출력  
: 일반적으로 DOM 요소나 JSON 객체를 출력하는데 사용  


**console.count()**  
: 호출된 횟수를 카운트 함  
: 레이블을 지정하면 레이블에 카운트되며 레이블을 지정하지 않으면 default 레이블이 적용됨  

```js
function fn() {
  console.count('label');
}
fn();
fn();

// 카운트 초기화
console.countReset('label');
```


**console.group()**  
: 로그를 그룹으로 묶어 출력  

```js
console.group();
console.log('1');
console.log('2');
console.log('3');
console.groupEnd();
```


**console.time()**  
: 코드 실행 시간 측정  

```js
console.time('label');

let result = 0;
for(let i = 0; i < 1000; i++) {
  result += i;
  if(i == 500) {
    console.timeLog('label');
  }
}

console.timeEnd('label');
```


**console.profile()**  
: 성능 프로파일링 메소드로 크롬이나 파이이폭스에서만 지원  
: 메소드 호출 후 개발자 도구의 Performance 또는 Profiles 탭을 통해 확인  

```js
console.profile('label');

let result = 0;
for(let i = 0; i < 1000; i++) {
  result += i;
}

console.profileEnd('label');
```