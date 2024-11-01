---
order: 0.3
title: dom
description: 문서 객체 모델 (DOM)
summary:
keywords:
- web
- document object model
- dom
- 문서 객체 모델
tags:
- web
created_time: 2024-10-01 23:28
modified_time: 2024-11-02 01:50
---

# DOM
Document Object Model  
: HTML, XML, SVG, MathML 같은 마크업 언어를 위한 API  
: 마크업 언어로 작성된 웹 문서를 구조화하는 방법과 접근하고 조작하는 방법 정의  

- [DOM Level](#dom-level-1)
- [DOM Infrastructure](./dom-infrastructure.md)
  - [DOM Parser](./dom-parser.md)
- [DOM Event](./dom-event.md)
- [DOM API](./api-dom/index.md)
  - [HTML API](./api-dom/index.md)
  - [CSS API](./api-dom/index.md)
- [BOM API](./api-dom/index.md)


스펙  
https://dom.spec.whatwg.org/   


**변환 단계**
```
웹 문서 => 파싱 => 문서 객체 모델
```


**DOM vs JS**  
: 자바스크립트는 DOM API를 통해 HTML 요소에 접근하고 요소를 제어함  

```
     DOM             JS
layout-engine  |  js-engine
```



## DOM level 1
: 각 벤더사에서 확장되던 DOM을 W3C에서 표준화  
: HTML과 XML 문서의 기본 구조를 트리 구조로 표현 확립  
: Node, Element, Attr, Document 등 Core 인터페이스와 HTML 인터페이스 등 정의  
: DOM을 조작하는 기본 메소드들 정의  

https://www.w3.org/TR/REC-DOM-Level-1/



## DOM Level 2
: 다양한 환경 지원을 위해 모듈화하고 필수 모듈과 선택 사항인 14개 모듈을 제공  
: 이벤트 버블링과 캡처링같은 이벤트 개념을 도입하고 Event 인터페이스를 추가  
: CSS 제어를 위한 CSS 인터페이스를 추가  

**API**
- Core
- Xml
- Html
- View
- Style
- Event
- ...

https://www.w3.org/TR/DOM-Level-2-Core/



## DOM Level 3
: Xpath, Validation 등 새로운 인터페이스를 정의해 16개의 모듈 지원  

- Load and Save
- Validation
- Xpath
- ...

https://www.w3.org/TR/DOM-Level-3-Core/



## DOM level 4
= DOM Living Standard  
: 2015년 부터 WHATWG에서 DOM 표준 관리  
: WHATWG은 기존 사양을 유지하면서 필요에 따라 새로운 기능을 추가  
: 일부 인터페이스와 인터페이스의 멤버가 제거됨   

https://www.w3.org/TR/dom40/   
https://dom.spec.whatwg.org/   