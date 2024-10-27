---
order: 0.9
title: language
description: 마크업 언어
summary:
keywords:
- programming language
- markup language
- 마크업 언어
tags:
- program
- programming language
created_time: 2024-10-25 22:53
modified_time: 2024-10-26 22:16
---

# Markup Language
: 마크업 명령어를 사용해 요소를 정의하고 문서의 구조와 의미를 표현하는 언어  

**markup**  
: 원고에서 지시 문구를 대신하는 범용 교정 부호(태그)를 표시하는 것  


**특징**
- 가독성 : 사람이 읽고 쓰기가 쉬움
- 구조화 : 문서의 논리적 구조를 표현함
- 확정성 : 새로운 태그 정의가 가능함


**분류**
- **문서 마크업 언어** : 문서의 구조와 내용 표현
  - GML
  - SGML
    - HTML
    - XML
      - DocBook
      - MathML
  - Markdown
  - AsciiDoc
- **TeX 계열 언어**  : 프로그래밍 가능
  - TeX 
  - LaTeX
  - pTeX
  - XeTeX 


**마크업 방식별 분류**
- [표현적 마크업](#presentational-markup)
- [절차적 마크업](#procedural-markup)
- [기술적 마크업](#descriptive-markup)



## Presentational Markup
= 표현적 마크업  
: 문서의 시각적 표현에 중점을 둔 마크업  
: 문서의 요소를 표현하기 위해 사용되며 문서의 구조나 의미에 영향을 미치지 않음  
: 표현적 마크업은 WYSIWYG 시스템에서 사용됨  

**WYSIWYG**  
: what you see is what you get  
: 사용자가 편집 과정에서 보는 화면에 최종 출력물과 동일하게 나타나는 시스템  



## Procedural Markup
= 절차적 마크업  
: 문서의 시각적 요소와 인쇄 형식을 결정하는 명령어를 제공하는 마크업  
: 요소가 화면에 어떻게 나타나고 인쇄되는지에 대한 처리 방법을 제공  
: 출판 시스템이나 인쇄물에서 사용됨  

**종류**
- Troff
- PostScript
- TeX



## Descriptive Markup
= 기술적 마크업, 설명적 마크업, 의미적 마크업  
: 문서의 의미와 구조를 표현하는 마크업  
: 다른 마크업에 비해 문법이 엄격해 작성하기 다소 복잡  
: 웹이나 데이터 저장이나 전송을 위해 사용됨  

**종류**
- SGML
- HTML
- XML



# Practical Markup Language   
: 실용 마크업 언어  
: 문서 마크업 언어의 단점을 보완한 새로운 마크업 언어   
: 기사, 서적, 보고서 등의 문서를 인간 친화적으로 작성하도록 설계  

```
<!-- html -->
<i>텍스트</i>
<b><i>텍스트</i></b>


{- PML -}
{i 텍스트}
{b {i 텍스트}}
```

http://www.practical-programming.org/