---
order: 0.25
title: java
description: 자바 제어자
tags:
- programming language
- language
- java
created_time: 2024-10-14 18:52
modified_time: 2024-10-14 23:53
---

# Java Modifier
: 클래스, 메소드, 변수 선언부에 사용하여 부가적인 의미를 부여  

**종류**
- [Access Modifier](#access-modifier) (access level)
- [Non-access Modifier](#non-access-modifier) (behavior)



## Access Modifier
= 접근 제어자, 접근 제한자, 수식자  
: 클래스와 클래스의 멤버에 접근 수준을 지정해 사용 범위를 제어함  

키워드 | 설명
---|---
private   | 같은 클래스만 접근 가능
protected | 같은 패키지이거나 상속 관계인 클래스만 접근 가능
(default) | 같은 패키지 내에서만 접근 가능
public    | 프로젝트 기준으로 어디서든 접근 가능


```java
// 자바 컴파일러는 클래스 단위로 바이트 코드를 생성
public class PublicClass {
    private class PrivateClass {}
    protected class PprotectedClass {}
}

class DefaultClass {}
```


## Non-access Modifier
= 제어자, 변경자, 수정자   
: 동작 방식을 제어하는데 사용되며 여러 제어자를 조합해 사용 가능함  

키워드 | 사용 범위
---|---|---
static       | 초기화 블록, 변수, 메소드, 내부 클래스
final        | 클래스, 변수, 메소드 
abstract     | 클래스, 메소드
strictfp     | 클래스, 메소드
synchronized | 블록, 메소드
native       | 메소드
volatile     | 변수
transient    | 변수

! static 키워드와 abstract 키워드를 동시에 지정할 수 없음  
! final 키워드와 abstract 키워드를 동시에 지정할 수 없음  



### static
: static 키워드가 붙으면 **클래스 레벨**에서 관리되어 인스턴스 생성과 관계없이 하나만 존재  
: 모든 인스턴스가 공유하는 멤버를 정의하기 위해 사용  
: 프로그램 실행시 클래스가 처음 로드될 때 static이 붙은 멤버가 로드되고 이후에 인스턴스가 생성됨    
: 생성 시점이 다르므로 정적 메소드에서 인스턴스 변수를 직접 참조할 수 없음  

```java
public class Example {
    
    static int NUM;
    static {
        NUM = 0;
    }

    // 인스턴스 생성없이 호출 가능한 클래스 메소드
    // 객체의 상태를 관리하지 않으며 동일한 기능을 제공하기 위해 사용
    static void method() {
        System.out.println(Example.NUM);
    }

    // 외부 클래스의 인스턴스와 독립적으로 동작하는 내부 클래스
    // 일반적으로 내부 클래스는 외부 클래스와 강한 연결성을 가지는데 
    // static 키워드가 붙은 내부 클래스는 외부 클래스의 멤버에 접근하지 못함
    static class InnerClass {}
}
```



### final
: final 키워드는 클래스, 변수, 메소드에 사용  
: final 클래스는 상속이 불가능해 하위 클래스를 만들 수 없으나 확장을 막아 안정성이 올라감  
: final 변수는 메모리 주소를 고정하여 재할당이 불가능해 데이터를 불변으로 만듬  
: final 객체 참조 변수는 참조를 고정하여 다른 객체 참조가 불가능  
: final 메소드는 오버라이딩이 불가능하나 안정성이 올라감  
: final 변수나 메소드는 JVM이 더 효율적으로 처리하여 성능 최적화에 도움을 줄 수 있음  

```java
public final class Example {
    
    // final 변수는 선언과 동시에 초기화하거나 생성자에 의해 한 번만 초기화 가능
    final int num = 0;
    
    final void method () {
        System.out.println(num);
    }

}
```



### abstract
: abstract 키워드는 클래스와 메소드에 사용  
: abstract 클래스는 클래스가 구현되지 않았으므로 객체 생성이 불가능함  
: abstract 클래스는 하위 클래스에서 구현을 강제하기 위해 사용하거나 공통 기능을 제공하기 위해 사용  
: abstract 메소드는 메소드의 시그니처만 정의하고 구현부가 없는 메소드  
: abstract 메소드가 존재하는 클래스는 무조건 추상 클래스로 정의되어야 함  

```java
abstract class AbstractExample {
    int num;

    // 하위 클래스에서 구현을 강제함
    abstract void method(); 
}

public class Example extends AbstractExample {
    @Override
    void method() {
        System.out.println("work");
    }
}
```



### synchronized
: synchronized 키워드는 블록문과 메소드에 사용  
: synchronized 블록은 객체의 모니터 락을 획득하고 해제함  
: 멀티스레드 환경에서 여러 스레드가 동시에 공유 자원에 접근하는 것을 방지  
: 한 번에 하나의 스레드만 접근해 데이터의 일관성을 보장하나 교착 상태가 발생할 수 있음  

**모니터락**  
: 객체가 가지고 있는 잠금 메커니즘  
: synchronized 메소드나 블록을 사용하면 한 번에 하나의 스레드만 해당 메소드나 블록에 접근을 보장  



### native
: native 키워드는 메소드에 사용  
: native 메소드는 자바의 메소드가 아니라 다른 프로그래밍 언어로 구현된 메소드임을 명시  
: 메소드 선언부만 자바로 작성하고 구현부는 JNI을 통해 네이티브 코드와 연동됨   
: 주로 하드웨어 접근이나 성능 향상 등이 필요한 경우 사용  

```java
public class Example {
    
    static {
        System.loadLibrary("네이티브 라이브러리 로드");
    }

    native void nativeMethod();

}
```



### volatile
: volatile 키워드는 변수에 사용  
: 멀티코어 환경에서 변수의 데이터 불일치 문제를 해결하기 위해 사용  
: 변수를 메인 메모리에 저장하여 CPU 캐시가 아닌 메인 메모리로부터 읽음  



### transient
: transient 키워드는 인스턴스 변수에 사용  
: 객체 직렬화 과정에서 transient 변수는 직렬화 대상에서 제외됨  
: 역직렬화시 transient 변수는 기본값으로 초기화됨  