---
order: 0.1
title: java
description: 자바 어휘 구조
tags:
- programming language
- language
- java
created_time: 2024-10-14 03:10
modified_time: 2024-10-14 18:37
---

# Java Lexical Structure
: 자바 어휘 구조  
: 자바 프로그램을 구성하는 가장 기본적인 요소들  

**구성 요소**   
- [주석](#comment)
- [공백](#white-space)
- [토큰](#token)
  - [식별자](#identifier)
  - [키워드](#keyword)
  - [리터럴](#literal)
  - [구분 기호](#separator)
  - [연산자](#operator)



## comment
: 자바 프로그램에서 사용되는 주석  
: 컴파일러에 의해 무시되는 영역으로 실행 파일에 포함되지 않음  

```java
// 한 줄 주석

/* 여러 줄 주석 */
```



## white space
: 자바 프로그램에서 사용되는 다양한 형태의 공백  
: 공백은 토큰을 구분하기 위해 사용되며 식별자나 키워드에는 사용하면 안됨  
: 컴파일러에 의해 무시되는 영역으로 실행 파일에 포함되지 않음  

**종류**
- 유니코드 공백 문자들 (space, non-breaking space, thin space 등)
- ASCII 코드 공백
  - 공백 문자 (space)   
  - 가로 탭 (horizontal tab)
  - 수직 탭 (vertical  tab)
  - 폼 피드 (form feed)
  - 줄 바꿈 (line feed)
  - 줄 종결 (carriage return)

```java
@Test
public void test(){

    Scanner scanner = new Scanner(System.in);
    String input = scanner.nextLine();

    if(input.length() > 0) {
      char ch = input.charAt(0);
      if(Character.isWhitespace(ch)) {
        int codePoint = (int) ch;
        System.out.println(codePoint);
      }
    }

}
```



## token   
: 프로그램을 구성하는 최소 의미 단위  
: 컴파일러가 어휘 분석을 할 때 식별되는 기본 단위  
: 주석과 공백을 제외한 입력 요소로 공백, 세미콜론, 구분 기호로 토큰을 구분함  

**종류**
- [식별자](#identifier)
- [키워드](#keyword)
- [리터럴](#literal)
- [구분 기호](#separator)
- [연산자](#operator)



### identifier
: 변수, 메소드, 레이블, 클래스 등에 식별을 위해 부여하는 이름  
: 공백, 키워드, boolean과 null 리터럴을 제외한 대소문자와 숫자를 사용  
: 달러와 언더스코어 사용 가능하나 컴파일러에서 사용하므로 사용 지양   
: 첫 문자로 숫자 사용 불가  

**java naming convention**

종류 | 설명 | 사용
---|---|---
camelCase  | 첫 글자는 소문자로 시작하고 새 단어의 첫 글자를 대문자로 시작해 구분 | - variable <br>- method
PascalCase | 첫 글자는 대문자로 시작하고 새 단어의 첫 글자를 대문자로 시작해 구분 | - class <br>- interface
SNAKE_CASE | 모든 글자는 대문자를 사용하고 단어는 언더스코어 기호로 구분 | static variable



### keyword
: 의미가 지정된 키워드  

**reserved keyword**  
: 언어 문법에서 특별한 의미를 가지는 키워드  
: 키워드 자체가 특별한 의미를 가지므로 식별자로 사용 불가능  

키워드 | 설명 
--- |---
_            | (java9) 람다, 이름없는 변수
abstract     | 추상 메소드와 추상 클래스 정의  
assert       | boolean expression, 코드 검증
boolean      | 데이터 타입   
break        | 조건문에서 흐름 중단, 스위치문과 반복문에서 종료하기 위한 키워드  
byte         | 데이터 타입 
case         | 스위치문에서 텍스트 블록 정의를 위한 키워드
catch        | 트라이문에서 생성된 예외를 잡기 위한 키워드
char         | 데이터 타입   
class        | 클래스 정의  
continue     | 반복문에서 현재 흐름을 중단하기 위한 키워드
default      | 스위치문에서 기본 코드 블록 정의를 위한 키워드 
do           | 제어문에서 루프를 선언하기 위한 키워드 
double       | 데이터 타입
else         | 조건문에서 분기하기 위한 키워드
enum         | 이넘 정의
extends      | 클래스나 인터페이스가 확장됨을 정의하는 키워드
final        | 변수의 값을 변경 불가능하게 하기 위한 키워드
finally      | 트라이문에서 예외 발생 여부와 상관없이 마지막에 실행될 코드 블럭을 정의하는 키워드 
float        | 데이터 타입
for          | 반복문
if           | 조건문 
implements   | 인터페이스 구현을 위한 키워드
import       | 클래스와 인터페이스를 가져오기 위한 키워드
instanceof   | boolean expression, 객체의 타입을 확인하기 위한 키워드  
int          | 데이터 타입
interface    | 인터페이스
long         | 데이터 타입
native       | 메소드가 네이티브 코드로 구현 되도록 지정하기 위한 키워드
new          | 새로운 객체 생성을 위한 키워드
package      | 패키지 
private      | 접근 제어자
protected    | 접근 제어자
public       | 접근 제어자 
return       | 메소드 실행을 종료하고 값을 반환하기 위한 키워드
short        | 데이터 타입
static       | 클래스 변수, 클래스 메소드를 지정하기 위한 키워드
strictfp     | 부동 소수점 표준을 엄격히 따르도록 지정하는 키워드
super        | 상위 클래스 객체를 참조하기 위한 키워드
switch       | 스위치문
synchronized | 다중 스레드에서 동기화가 필요한 메소드나 코드 블럭을 지정하는 키워드 
this         | 현재 객체를 참조하기 위한 키워드
throw        | 예외를 명시적으로 발생하는 키워드
throws       | 예외 선언을 위해 사용하는 키워드
transient    | 직렬화 과정에서 제외할 경우 지정하는 키워드
try          | 트라이문
void         | 메소드에서 리턴 타입이 없음을 지정하는 키워드
volatile     | 필드를 메인 메모리에 저장하기 위한 키워드
while        | 루프문 


**contextual keyword**  
: 특정 맥락에서 키워드로 사용되어 다른 상황에서는 식별자로 사용 가능  

키워드 | 설명 
---|---
exports      | (java9) 모듈을 가져오거나 내보내기 위한 키워드   
module       | (java9) 모듈 선언 키워드 
non-sealed   | (java17) Sealed 클래스 
open         | (java9) 모듈 오픈 키워드
opens        | (java9) 특정 패키지 오픈 키워드
permits      | (java17) Sealed 클래스
provides     | (java9) 모듈 시스템
record       | (java14) Record 클래스 
requires     | (java9) 모듈 내부에서 필요한 라이브러리 지정
sealed       | (java17) Sealed 클래스
to           | (java9) 모듈 시스템
transitive   | (java9) 모듈 시스템
uses         | (java9) 모듈 시스템
var          | (java10) 로컬 변수의 타입 추론을 위한 키워드
with         | (java15) Record 클래스의 복사 메소드 생성하기 위한 키워드
yield        | (java14) Switch 블록내에서 계산된 값을 반환하기 위한 키워드


**restricted keyword**  
: 예약어로 지정되었지만 사용되지 않는 키워드  

키워드 | 설명 
---|---
const        | 예약어로 지정했으나 실제 구현하지 않음
goto         | 예약어로 지정했으나 실제 구현하지 않음
when         | 예약어로 미래에 사용될 수 있음



### literal
: 코드에서 값을 직접적으로 표현한 고정된 값  
: true, false, null은 리터럴이면서 식별자로 사용 불가능함  

**종류**
- Null
- Boolean
- Integer
- Floating Point
- Character
- String



### separator
: 코드에서 요소(토큰)를 구분하기 위해 사용되는 기호나 문자  

구분 기호 | 설명
---|---
( )  | 메소드 정의 및 호출, 매개 변수 목록, 표현식에서는 우선 순위 정의, 제어문에서는 표현식 정의
[ ]  | 배열 유형 선언, 배열 값 참조
{ }  | 배열의 초기 값, enum 목록, 클래스와 메소드 및 명령문을 묶는 블록 정의, 초기화 블록   
;    | 문장 분리나 문장 끝, 일부 상황에서 생략 가능
,    | 변수 연속 선언시 식별자 구분, 배열의 요소 구분
.    | 패키지 구분, 객체의 필드와 메소드 참조
@    | 어노테이션
...  | 가변 인자
:    | 디폴트 메소드 구현, 삼항 연산자, for-each 문, switch 문, label문, assertion에 사용
::   | 생성자 참조나 메소드 참조 	
->   | 람다 표현식에서 파라미터와 바디를 구분
"    | 문자열 리터럴의 시작과 끝
'    | 문자 리터럴의 시작과 끝



### operator
: 연산을 수행하는 기호로 약 38개 연산자 기호 존재  
: 연산자는 기능이나 용도에 따라 다양한 [분류](./operator-classification.md)로 나뉨  

```
=   >   <   !   ~   ?   :   ->
==  >=  <=  !=  &&  ||  ++  --
+   -   *   /   &   |   ^   %   <<   >>   >>>
+=  -=  *=  /=  &=  |=  ^=  %=  <<=  >>=  >>>=
```