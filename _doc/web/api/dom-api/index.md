---
order: 2
title: web
description: Web API - DOM
summary:
keywords:
- web
- web api
- dom
tags:
- web
created_time: 2024-11-02 02:06
modified_time: 2025-02-03 01:11
---

# DOM API
: DOM 트리를 동적으로 조작하기 위한 인터페이스  
: HTML API와 CSS API를 포함하며 문서의 구조, 스타일, 콘텐츠에 동적으로 조작이 가능함  

- Node
  - Document
  - DocumentType
  - DocumentFragment
    - ShadowRoot 
  - Element
  - Attr
  - CharacterData
    - Text
    - Comment

**컬렉션**
- NodeList
- HTMLCollection

**속성**
- NamedNodeMap
- DOMTokenList

**이벤트**
- Event
  - FocusEvent
  - InputEvent
  - KeyboardEvent
  - MouseEvent
  - WheelEvent
- TouchEvent
- CustomEvent

**범위**
- Range
- Selection

**순회**
- NodeIterator
- TreeWalker
- NodeFilter
