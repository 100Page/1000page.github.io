---
order: 0
title: html
description: HTML Datalist Tag
summary:
keywords:
- web
- html
- tag
- datalist
tags:
- html
created_time: 2024-10-04 03:36
modified_time: 2024-10-29 22:48
---

# HTML Datalist Tag
: 미리 정의된 옵션 목록을 지원하는 태그  
: input 태그의 list 속성과 연결되며 일반적인 드롭다운이 아니라 텍스트 입력이 가능  

**포함 요소**   
- [option](./option.md)


```html
<label>
  <input type="text" list="datalist">
  <datalist id="datalist">
    <option value="1"></option>
    <option value="2"></option>
    <option value="3"></option>
  </datalist>
</label>


<label>
  <input type="time" list="datalist">
  <datalist id="datalist">
    <option value="12:00"></option>
    <option value="14:00"></option>
    <option value="16:00"></option>
  </datalist>
</label>
```