---
order: 0.2
title: dom
description: DOM Event
summary:
keywords:
- web
- document object model
- dom
- dom event
- 문서 객체 모델
tags:
- web
created_time: 2024-11-01 22:30
modified_time: 2024-11-02 01:20
---

# DOM Event
: 웹 문서와 사용자간 상호작용하기 위한 메커니즘  
: 요소에 이벤트를 등록하고 트리 구조를 통해 이벤트가 전달되는 시스템  


**이벤트**  
: 요소에 발생하는 특정한 액션  
: 사용자의 상호작용(클릭, 키 입력)과 시스템의 변화를 포함  


**구성 요소**

요소 | 설명
---|---
이벤트 타입 | 이벤트를 식별하는 문자열
이벤트 대상 | 이벤트가 발생하는 DOM 요소
이벤트 리스너 | 특정 이벤트에 대해 호출되는 함수
이벤트 핸들러 | 특정 이벤트에 대해 호출되는 인라인 함수


**이벤트 종류**
: 인터랙션, 키보드, 마우스 등 다양한 [이벤트](../html/html-attribute-event.md) 지원  


**이벤트 처리 흐름**
```
이벤트 객체 생성 => 이벤트 전파 => 이벤트 리스너 호출
```

1. 이벤트가 감지되면 브라우저가 관련 이벤트 객체를 생성함
2. 생성된 이벤트 객체는 특정 DOM 요소에 디스패치되고 이벤트 모델에 따라 DOM 트리에 전달됨
3. 이벤트가 전파되면서 등록된 이벤트 리스너가 호출되어 작업을 수행함



## 이벤트 등록

**인라인 이벤트**  
: 요소의 속성에 이벤트 등록  
: HTML과 JS 결합이 높으므로 사용 지양  

```html
<tag onclick="(e) => console.log(e)">
```


**이벤트 핸들러**  
: 요소의 EventHandler 속성을 통해 이벤트 등록  
: 동일한 이벤트 속성의 이벤트를 여러개 등록할 경우 마지막으로 정의된 이벤트만 처리됨  

```js
const element = document.getElementById('');
element.onclick = (e) => {
  console.log(e);
};
```


**이벤트 리스너**  
: addEventListener() 메소드를 사용해 요소에 이벤트 등록  

```js
const element = document.getElementById('');

// 이벤트 등록
el.addEventListener('click', callback);

// 이벤트 제거
el.removeEventListener('click', callback);

function callback(e) {
  // 이벤트가 발생하면 호출되는 함수 첫번째 인수로 이벤트 객체가 전달됨
}
```



## 이벤트 객체
: 요소에 이벤트가 발생하면 이벤트 객체가 자동으로 생성됨  
: 이벤트 객체는 이벤트에 대한 정보를 가지고 있음  

속성 | 설명
---|---
type   | 발생한 이벤트 타입
target | 이벤트가 발생한 요소
currentTarget     | 이벤트 리스너가 부착된 요소
preventDefault()  | 요소의 기본 동작 방지
stopPropagation() | 이벤트 전파 중단



## 이벤트 모델
= 이벤트 흐름, 이벤트 전달  
: 요소에 등록한 이벤트가 DOM Tree에서 트리 구조를 통해 전달되는 모델  
: 이벤트 모델을 기반으로 이벤트를 위임하는 기법을 사용할 수 있음  


**이벤트 버블링**   
: 하위 노드가 이벤트를 먼저 받은 다음 상위 노드에게 전달되는 방식  


**이벤트 캡처링**  
: 상위 노드가 이벤트를 먼저 받은 다음 하위 노드에게 전달되는 방식  


```js
const element = document.getElementById('');

el.addEventListener('click', callback, {
  capture: true,   // 캡처링 단계에서 실행
  once: true,      // 한 번만 실행
  passive: true,   // 성능 최적화
});


function callback(e) {
  e.stopPropagation(); // 버블링 차단
}


// 이벤트 위임
const ul = document.getElementById('ul');
ul.addEventListener('click', function(e) {
  if(e.target.tagName === 'LI') {
    console.log(e.target.textContent);
  }
});
```



## 사용자 정의 이벤트
: CustomEvent 인터페이스를 통해 사용자 정의 이벤트 생성 지원  

```js
// 이벤트 생성
const customEvent = new CustomEvent('myCustomEvent', {
  detail: { message: '커스텀 이벤트 데이터' },
  bubbles: true,
  cancelable: true,
});

// 이벤트 리스너 등록
element.addEventListener('myCustomEvent', function(e) {
  console.log(e.detail.message);
});

// 이벤트 수동 디스패치
// 이벤트를 강제로 발생시켜 이벤트 리스너에 상태 변경을 알림
// 이벤트가 디스패치되지 않으면 리스너가 호출되지 않음
element.dispatchEvent(customEvent);
```


**dispatch**  
: 특정 요소에 이벤트가 발생했음을 알리는 프로세스  
: 브라우저가 생성하는 이벤트들은 자동으로 디스패치됨  