---
order: 0.1
title: dom
description: DOM Infrastructure
summary:
keywords:
- web
- document object model
- dom
- dom tree
- 문서 객체 모델
tags:
- web
created_time: 2024-11-01 22:30
modified_time: 2024-11-02 00:23
---

# DOM Infrastructure
: 브라우저가 웹 문서를 로드하고 화면에 표시하는 전체 과정  
: 웹 문서가 화면에 표시되려면 DOM으로 변환되어 처리되어야 함  

**단계**
```
웹 문서 로드 => 파싱 => DOM 생성 => DOM 조작 => 렌더링 트리 생성 => 렌더링
```

1. 브라우저가 웹 문서를 로드
2. HTML 파서를 통해 로드된 웹 문서를 토큰화하고 파싱
3. 요소를 객체로 만들고(DOM) 요소의 계층 관계를 트리 구조로 표현(DOM Tree)
4. 이때 요소나 요소의 계층 관계가 유효하지 않을 경우 수정됨
5. JS이나 CSS 로딩 순서에 따라 DOM 생성이 지연되거나 조작됨
6. 필요에 따라 DOM API를 통해 DOM Tree에 접근해 객체를 조작
7. DOM Tree와 CSSOM을 결합해 렌더링 트리를 생성하고 이를 기반으로 화면에 렌더링


**최적화**  
: 최초 DOM 생성 후 DOM이 수정되면 렌더링 성능을 최적화하기 위해 브라우저는 DOM Tree에서 변경된 요소만 다시 렌더링함  
: 노드는 변경 사항이 발생하면 플래그를 설정하고 렌더링 큐에 저장됨  
: 브라우저는 특정 시점에 렌더링 큐를 검사해 변경 사항을 한 번에 처리함  
: appendChild, insertBefore, removeChild 메소드가 사용되면 DOM Tree가 변경됨  



## DOM Tree
: 브라우저가 웹 문서를 로드할 때 생성되는 웹 문서의 요소들을 구조화한 모델  

**Tree**  
: 데이터를 트리 형태의 계층 구조로 표현하는 자료 구조  

용어 | 설명
---|---
Node         | 트리 구성 요소
Root Node    | 트리 구조에서 최상위에 존재하는 노드   
Parent Node  | 트리 구조에서 다른 노드를 포함하는 상위 노드  
Child Node   | 부모 노드에 포함되는 모든 노드  
Sibling Node | 같은 부모 노드를 갖는 노드   


**HTML**
```html
<!doctype html>
<html>
<head lang="en">
  <title>title text</title>
</head>

<body>
  <!-- comment text -->
</body>

</html>
```


**DOM**
```yaml
Document
  Doctype: html
    Element: html
      Element: head lang="en"
        Element: title
          Text: title text
      Element: body
        Comment: comment text
```


**구성 요소**

종류 | 설명
---|---
문서 노드 | DOM Tree의 최상위 노드로 document 객체로 표현
요소 노드 | HTML 태그로 속성과 자식 노드를 포함
속성 노드 | HTML 태그의 속성으로 요소에 종속됨
텍스트 노드 | HTML 요소 내부의 콘텐츠
주석 노드 | HTML 주석으로 렌더링되지 않음


**노드 접근**  
: 자바스크립트를 통해 동적으로 접근 가능  

```js
// 루트 요소에 대한 참조 반환
document.documentElement;
```
