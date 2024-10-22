---
order: 0.22
title: java
description: 자바 클래스 종류
summary:
keywords:
- java
- java class
- 자바 클래스
tags:
- language
- java
created_time: 2024-10-11 11:41
modified_time: 2024-10-22 10:40
---

# Java Class Type
: 자바 클래스 종류  

**정의 방식**
- 일반 클래스
- [중첩 클래스](#nested-class)
- [추상 클래스](#abstract-class)
- [최종 클래스](#final-class)
- [봉인된 클래스](#sealed-class)
- [레코드 클래스](#record-class)
- [제네릭 클래스](#generic-class)
- [열거형 클래스](#enum-class)

**용도**
- [유틸리티 클래스](#utility-class)
- 싱글톤 클래스
- 팩토리 클래스
- 빌더 클래스




## Nested Class
: 일반 클래스 내부에 정의된 클래스  
: 선언 위치에 따라 외부 클래스와 중첩 클래스로 구분  
: 중첩 클래스는 static 키워드 여부에 따라 정적 중첩 클래스와 비정적 중첩 클래스로 나뉨  
: 정적 중첩 클래스를 제외한 중첩 클래스들은 외부 클래스의 인스턴스와 관계를 맺음  

```java
public class OuterClass {

	// 정적 중첩 클래스
	static class StaticNestedClass {}

	// 비정적 중첩 클래스
	class InnerClass {}

	void method() {

		// 지역 내부 클래스
		class LocalInnerClass{}

		// 익명 내부 클래스
		Map map = new HashMap() {
			{
		   		put("key", "value");
			}
		};

	}

}
```


**정적 중첩 클래스**  
: static 키워드를 가진 중첩 클래스  
: 외부 클래스를 통해 사용하며 외부 클래스의 정적 변수와 정적 메소드에 접근 가능  
: 외부 클래스의 인스턴스와 독립적이며 외부 클래스 멤버에 접근 불가  



**비정적 중첩 클래스**  
: = 내부 클래스, 멤버 클래스, 인스턴스 클래스  
: 클래스의 멤버가 될 수 있는 중첩 클래스  
: 내부 클래스는 외부 클래스에 종속되며 외부 클래스 멤버에 접근할 수 있음  
: 외부 클래스가 인스턴스가 되어야 내부 클래스도 사용 가능  

```java
public class Example {
    
    private int num = 10;
    private String str = "outer";

    class InnerClass {
        private String str = "inner";

        public void innerMethod() {
            // 외부 클래스에 바로 접근 가능
            System.out.println("외부 클래스 : " + num); 

            // 변수 명이 중복될 경우 내부 선언을 우선시 함
            System.out.println("내부 클래스 : " + str);
            System.out.println("외부 클래스 : " + Example.this.str); 
        }
    }

}
```


**지역 내부 클래스**  
: 외부 클래스의 메소드 내부에 정의된 클래스로 접근 제어자 지정 불가  
: 메소드가 종료되면 지역 클래스의 객체도 종료됨  
: 비동기적 처리나 이벤트 핸들링을 위해 사용됨  


**익명 내부 클래스**  
: = 무명 클래스   
: 클래스 선언과 생성을 동시에 하고 한 번만 사용 가능한 객체  
: 추상 클래스나 인터페이스를 즉석에서 구현할 때 사용됨  



## Abstract Class
: 인스턴스를 생성할 수 없는 클래스  
: 추상 클래스를 상속하는 하위 클래스에서 필수로 구현해야하는 추상 메소드를 선언함  

```java
public abstract class Shape {
	// 추상 메소드 : 필수로 구현해야하는 메소드
	public abstract void abstractMethod();

	// 일반 메소드 : 일반적으로 공통 기능을 위한 메소드
	public void method() {};
}

public class Circle extends Shape {
	public void abstractMethod() {
		// 구현
	}
}
```



## Final Class
: 일반 클래스에 final 키워드를 사용하면 클래스가 상속이 불가능한 최종 클래스가 됨  
: 클래스의 동작을 변경하지 못하게 막아 보안성을 보장  

```java
// 일반 클래스
public class Example {}

// 최종 클래스
public final class Example {}
```



## Sealed Class
: Java 17에서 공식 도입된 클래스로 클래스의 상속을 제어하기 위해 사용  
: 클래스의 상속 여부를 제한해 클래스 계층 구조를 제어함  

```java
public sealed class Shape permits Circle, Rectangle {}

public final class Circle extends Shape {}

public final class Rectangle extends Shape {}
```



## Record Class
: Java 16에서 공식으로 도입된 클래스로 불변 데이터 객체를 생성하기 위해 사용  
: 모든 필드에 final 키워드가 붙어 한 번 초기화되면 데이터 재할당 불가능  
: 컴파일러가 자동으로 생성자, getter(), equals(), hashCode(), toString() 메소드를 생성  

```java
// 기본 사용 방법
public record Example(int variable) {}

// 메소드 추가 가능
public record Example(int variable) {
	void method() {
		System.out.println(variable);
	}
}
```



## Generic Class
: 타입을 매개변수로 받을 수 있는 제네릭 기능을 지원하는 클래스

```java
public class Example<T> {
	public T variable;
}
```



## Enum Class
: 관련된 상수 집합을 정의하는 클래스  
: enum 키워드를 통해 클래스를 정의하면 java.lang.Enum 클래스를 암시적으로 상속받아 동작함  
: Enum 클래스는 final 클래스로 취급되며 JVM에 의해 싱글톤으로 관리됨  
: 내부에 정의된 상수들은 public static final 필드로 정의되며 선언된 순서로 순서를 가짐  

```java
public enum Day { 
	SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY 
}
```



## Utility Class
: 정적 메소드로 구성되어 공통 기능을 제공하는 클래스  
: 일반적으로 인스턴스화 하지 않으며 클래스 레벨에서 독립적으로 존재  
: 객체가 필요하지 않기 때문에 생성자를 private로 지정해 인스턴스화를 방지함  

**헬퍼 클래스**  
: 유틸리티 클래스와 비슷하게 기능을 제공하는 클래스이나 필요에 따라 인스턴스화 가능  
: 기능을 제공하면서 상태를 유지할 필요하 있는 경우 인스턴스를 통해 관리함  