---
order: 0.11
title: dom
description: DOM Parser
summary:
keywords:
- web
- document object model
- dom
- dom parser
- 문서 객체 모델
tags:
- web
created_time: 2024-11-01 22:30
modified_time: 2024-11-02 02:01
---

# DOM Parser
: DOM 파서는 문서를 파싱해 요소를 객체로 만들고 DOM Tree으로 표현함  

**단계**
```
웹 문서 로드 => 토큰화 및 파싱 => DOM 트리 생성
```

1. 브라우저가 웹 문서를 로드
2. HTML 파서를 통해 로드된 웹 문서를 토큰화하고 파싱
3. 이때 문서의 구조나 구문이 잘못되었으면 수정됨
4. DOM 파서가 요소를 객체로 만들고(DOM) 요소의 계층 관계를 트리 구조로 표현(DOM Tree)
5. 이때 요소나 요소의 계층 관계가 유효하지 않을 경우 수정됨
6. 파서가 수정하기 어려운 오류는 경고를 발생


**HTML 파서 vs DOM 파서**  
: HTML 파서는 웹 문서의 구조를 해석하며 구문 오류를 허용하고 유연하게 처리함  
: HTML 파서는 누락된 닫는 태그, 잘못된 속성 사용, 태그 중첩 등 오류를 직접 처리함  
: DOM 파서는 HTML 파서의 결과물을 기반으로 트리 구조를 생성  
: DOM 파서는 구조나 구문 오류를 만나면 처리하지만 처리하지 못할 경우 오류를 발생함  


**파서 성능 최적화**  
- 웹 문서를 지연 로드하여 필요한 요소만 로드하면 성능을 개선할 수 있음
- 웹 문서를 비동기적으로 파싱하면 성능을 향상시킬 수 있음  
- 웹 문서의 크기가 큰 경우 웹 워커를 통해 최적화 가능  

```js
// DOM을 조작할 경우 DocumentFragment를 사용하면 성능을 개선할 수 있음
// DocumentFragment는 메모리 내에서만 존재하는 경량 DOM 트리
// DOM 조작이 빈번할 경우 DocumentFragment에 추가하고 한 번만 실제 DOM에 추가
const fragment = document.createDocumentFragment();

const newElement = document.createElement('div');
fragment.appendChild(newElement);

document.body.appendChild(fragment);
```


**파서 사용**
```js
const parser = new DOMParser();

const htmlString = '<div><p>Test</p></div>';
const htmlDoc = parser.parseFromString(htmlString, 'text/html');

const parseError = htmlDoc.querySelector('parsererror');
if(parseError) {
  console.error(parseError.textContent);
}
```


**DOM Parser API**
```webidl
[Exposed=Window]
interface DOMParser {
  constructor();
  Document parseFromString(DOMString string, DOMParserSupportedType type);
};

enum DOMParserSupportedType {
  "text/html",
  "text/xml",
  "application/xml",
  "application/xhtml+xml",
  "image/svg+xml"
};
```