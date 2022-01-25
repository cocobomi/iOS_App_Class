import UIKit

/*
 struct 구조체 이름 {
    프로퍼티와 메서드
 }
 */

//구조체와 클래스는 파스칼 표기법을 따르기 때문에 대문자임
struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

//구조체를 사용하려면 인스턴스를 생성해줘야 함
var user = User(nickname: "gunter", age: 23)

user.nickname
user.nickname = "ablert"
user.nickname

user.information()
