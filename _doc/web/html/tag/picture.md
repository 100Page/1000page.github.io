---
order: 0.9
title: html
description: HTML Picture Tag
tags:
- html
- tag
created_time: 2024-10-04 04:13
modified_time: 2024-10-04 17:25
---

# HTML Picture Tag
: 다양한 해상도와 화면 크기에 맞는 이미지를 제공하기 위한 태그  

**포함 요소**
- [source](./source.md)
- [img](./img.md)


```html
<picture>
  <source srcset="image-small.jpg" media="(max-width: 600px)">
  <source srcset="image-medium.jpg" media="(max-width: 1200px)">
  <img src="image-default.jpg" alt="설명">
</picture>
<!-- picture 태그를 지원하지 않으면 img 태그 이미지가 사용 -->


<picture>
  <source srcset="example.jpg 400w, example@2x.jpg 800w" sizes="(min-width:1200px) 800px, (min-width:600px) 400px">
  <img src="image-default.jpg" alt="설명">
</picture>
<!--
: 화면 너비가 1200픽셀 이상일 때 800픽셀 너비의 이미지를 사용
: 화면 너비가 600픽셀 이상일 때 400픽셀 너비의 이미지를 사용
: 화면 너비가 600픽셀 이하일 때 조건이 명시되지 않아 브라우저에서 적합한 이미지를 사용
-->
```