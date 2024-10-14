---
order: 0.22
title: java
description: 자바 클래스 종류
tags:
- programming language
- language
- java
created_time: 2024-10-11 11:41
modified_time: 2024-10-15 02:44
---

# Java Class Type
: 자바 클래스 종류  

**정의 방식**
- 일반 클래스
- [중첩 클래스](#nested-class)
- 추상 클래스
- 열거형 클래스
- [레코드 클래스](#record-class)

**특성**
- 최종 클래스
- 제네릭 클래스

**용도**
- [유틸리티 클래스](#utility-class)
- 싱글톤 클래스
- 팩토리 클래스
- 빌더 클래스



## Nested Class
: 일반 클래스 내부에 정의된 클래스들  
: 선언 위치에 따라 외부 클래스와 중첩 클래스로 구분  
: 중첩 클래스는 static 키워드 여부에 따라 정적 중첩 클래스와 비정적 중첩 클래스로 나뉨  
: 정적 중첩 클래스를 제외한 중첩 클래스들은 외부 클래스의 인스턴스와 관계를 갖음  

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



## Record Class
: Java 14에서 도입된 클래스로 불변 데이터 객체를 생성하기 위해 사용  
: 모든 필드에 final 키워드가 붙어 한 번 초기화되면 데이터 재할당 불가능  
: 컴파일러가 자동으로 생성자, getter(), equals(), hashCode(), toString() 메소드를 생성  

```java
// 기본 사용 방법
public record Example(int num) {}

// 메소드 추가 가능
public record Example(int num) {
	void method() {
		System.out.println(num);
	}
}
```



## Utility Class
: 정적 메소드로 구성되어 공통 기능을 제공하는 클래스  
: 일반적으로 인스턴스화 하지 않으며 클래스 레벨에서 독립적으로 존재  
: 객체가 필요하지 않기 때문에 생성자를 private로 지정해 인스턴스화를 방지함  

**헬퍼 클래스**  
: 유틸리티 클래스와 비슷하게 기능을 제공하는 클래스이나 필요에 따라 인스턴스화 가능  
: 기능을 제공하면서 상태를 유지할 필요하 있는 경우 인스턴스를 통해 관리함  