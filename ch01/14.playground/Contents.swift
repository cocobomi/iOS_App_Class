import UIKit

/*
 init(먀개변수: 타입, ...) {
    프로퍼티 초기화
    인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
 */


class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    deinit{
        print("deinit user")
    }
}

var user = User(nickname: "gunter", age: 23)
user.nickname
user.age

var user2 = User(age: 27)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil


//deinit 스위프트는 인스턴스가 더 이상 필요하지 않으면 자동으로 메모리에 소멸시킴 user3에 nil을 대입시키면 인스턴스가 더 이상 필요하지 않다고 판단해 deinit 출력
