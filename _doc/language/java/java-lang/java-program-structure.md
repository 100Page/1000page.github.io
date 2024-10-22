---
order: 0.2
title: java
description: 자바 프로그램 구조
summary:
keywords:
- java
- java program structure
- 자바 프로그램 구조
tags:
- language
- java
created_time: 2024-10-09 08:59
modified_time: 2024-10-22 10:40
---

# Java Program Structure
: 자바 프로그램 생성을 위한 표준 구조  
: 컴퓨터 프로그램은 데이터와 이를 처리하는 기능으로 구성된 실행 가능한 소스 코드  
: 자바 프로그램은 하나 이상 클래스로 구성되고 클래스는 변수(데이터)와 메소드(기능)로 구성됨  

```java
// 1. package declaration
package example.java;

// 2. import declaration
import java.*;

// 3. class definition 
public class Example {

	// 4. block statement 
	{ }

	// 5. class member 
	// - variable 
	// - method 

	// vriable declaration
	int var;

	// method declaration
	void method();

	// 자바 프로그램 실행시 가장 먼저 호출되는 메소드로 자바 프로그램은 하나의 메인 메소드를 포함해야 함
	// 프로그램 종료 = 메인 메소드 종료
	public static void main(String[] args) {}

}
```

**declaration** (선언)  
: 변수, 메소드, 클래스, 인터페이스 등 존재를 선언  
: 구체적 구현이 없으며 타입이나 이름만 명시된 구문  

**definition** (정의)  
: 선언된 항목에 대해 구체적으로 정의  
: 변수는 값을 갖고 메소드는 구체적인 동작이 정의됨  

**statement**  
: 프로그램이 수행할 동작이나 행동을 명시하는 구문  
: 독립으로 실행 가능한 단위  



## package declaration
= named package  
: 동일한 디렉토리에 저장되어있는 관련있는 자바 파일(클래스, 인터페이스) 모음  
: 특정 디렉토리에 속한 경우 이를 선언하며 하나의 자바 파일은 하나의 package 선언만 가능  

**종류**
- 내장 패키지 = Java API
- 사용자 정의 패키지 

**명명 규칙**
- 패키지는 모두 소문자를 사용하고 마침표로 계층을 구분 
- 일반적으로 최상위 도메인(도메인 역순)부터 시작

```java 
package a;
public class Example {}

package a.b.c;
public class Example {}

// FQCN (fully qualified class name)
// : 클래스가 속한 패키지를 포함한 이름
a.Example ex1 = new a.Example();
a.b.c.Example ex2 = new a.b.c.Example();
```



### unnamed package 
= default package, anonymous package  
: 패키지를 생성하지 않은 경우 생기는 이름없는 패키지  
: 이름없는 패키지는 하위 패키지를 생성 할 수 없음  
: 이름없는 패키지에 존재하는 클래스들은 정식 이름이 없어 import 사용 불가  
: 편의를 위해 제공하는 기능으로 프로그램 제작시 사용 지양  



## import declaration
: 다른 패키지에 존재하는 클래스를 참조하기 위한 구문  
: import 선언을 통해 다른 패키지에 존재하는 클래스를 클래스 이름으로 참조함  
: 기본이되는 java.lang 패키지는 import 구문이 없어도 참조 가능  

```java
// 하위에 속한 모든 클래스 참조 
import java.util.*;

// 단일 클래스 참조 
import java.util.Date;

public class Example {
	public static void main(String[] args) {
		// import 선언이 없는 경우
		System.out.println(java.lang.Math.PI);
	}
}
```



### static import declaration
: Java 5부터 지원된 구문  
: 정적 멤버에(정적 변수, 정적 메소드) 쉽게 접근하기 위해 사용  
: 정적 멤버는 클래스 명으로 접근해야 하지만 static import 선언시 클래스 명 생략 가능  

```java
import static java.lang.Math.*;

public class Example {
	public static void main(String[] args) {
		System.out.println(PI);
	}
}
```