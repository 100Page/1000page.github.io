---
order: 1
title: web api
description: Web API - Navigation
summary:
keywords:
- web
- web api
- navigation
tags:
- web api
created_time: 2025-02-03 05:15
modified_time: 2025-02-04 20:02
---

# Navigation API
: 페이지 탐색을 더 세밀하게 제어하기 위해 도입된 인터페이스 집합  
: [History](../bom-api/api-history.md) 한계를 보완하기 위해 도입되어 세밀한 탐색 제어와 상태 관리가 가능함  
: [Navigator](../bom-api/api-navigator.md)는 브라우저 정보를 제공하는 인터페이스  

**인터페이스**
- Navigation
- NavigationHistoryEntry
- NavigationTransition
- NavigationActivation



## Navigation
: 페이지 탐색을 제어하고 관리하기 위한 인터페이스  

**스펙**  
https://html.spec.whatwg.org/multipage/nav-history-apis.html#navigation-interface


**속성과 메소드**  

속성 | 설명
---|---
currentEntry | 현재 탐색 항목을 나타내는 NavigationHistoryEntry 객체 반환
transition   | 현재 탐색 전환 정보를 나타내는 NavigationTransition 객체 반환
activation   | 페이지 활성 정보를 나타내는 NavigationActivation 객체 반환
canGoBack    | 탐색 기록에서 이전으로 갈 수 있는지 여부 반환
canGoForward | 탐색 기록에서 다음으로 갈 수 있는지 여부 반환


**entries()**  
: 탐색 기록의 모든 항목을 NavigationHistoryEntry 배열로 반환  


**updateCurrentEntry()**  
: 현재 항목의 상태를 업데이트 함  


**navigate()**  
: 주어진 URL로 이동하고 NavigationResult 반환


**reload()**  
: 현재 페이지를 다시 로드함

```js
await navigation.reload({
  // NavigationReloadOptions
  state: '상태 정보',
  info: '탐색에 대한 추가 정보',
});
```


**traverseTo()**  
: 탐색 기록에서 주어진 키를 가진 항목으로 이동함  


**back()**  
: 탐색 기록에서 이전 항목으로 이동함


**forward()**  
: 탐색 기록에서 다음 항목으로 이동함