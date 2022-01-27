import UIKit
import Foundation


/*
 클로저 - 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체의 역할을 할 수 있음
 여기서 일급 객체란 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수도 있다.
 보통 클로저라 하면 이름없는 함수, 익명 함수를 지칭, 네임드,언네임드 둘 다 포함하지만 보통 언네임드 클로져를 말함
 - Named closure
 - Unnamed closure
 */


/*
 { (매개 변수) -> 리턴 타입 in  //클로져 헤드, in은 헤드와 바디를 구분짓는 키워드
    실행 구문 //클로져 바디
 }
 */


let hello = { () -> () in
    print("hello")
}

hello()


//파라미터와 리턴 타입이 있는 클로져
//함수에서 배운대로 파라미터의 네임은 단독으로 쓰였으니 전달인자 레이블이자 파라미터 네임으로 생각할 수도 있지만, 클로져에서는 전달인자 레이블을 사용하지 않는다
//따라서 전달인자 레이블이 아니고 오직 파라미터 네임만 사용된다.
let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

hello2("Gunter")


//클로져를 함수의 파라미터로 전달하는 함수
func doSomething(closure: () -> ()) {
    closure()
}


doSomething(closure: { () -> () in
    print("hello")
})


//클로져가 조금 길어지거나 가독성이 떨어지면 후행 클로져 기능을 사용하면 됨, 단 후행 클로져는 맨 마지막 매개변수로 전달되는 클로져에만 해당.
//매개변수로 클로져 여러개를 전달할 때는 맨 마지막 클로져만 후행 클로져를 사용 가능
doSomething() {
    print("hello2")
}


func doSomething2() -> () -> () {
    return { () -> () in
    print("hello4")
    }
}

doSomething2()()


func doSomething2(success: () -> (), fail: () -> ()) {
    
}


//다중 후행 클로져
doSomething2 {
    
} fail: {
    <#code#>
}




func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { (a, b, c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(closure: {
    $0+$1+$2
})


doSomething3() {
    return $0+$1+$2
}

doSomething3 {
    return $0+$1+$2
}
