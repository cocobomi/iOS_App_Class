import UIKit

/*
익스텐션 - 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가하는 기능
 익스텐션은 연산 프로퍼티를 추가할 수 있지만 저장 프로퍼티는 추가할 수 없다, 타입에 정의되어있는 기존의 프로퍼티의 프로퍼티 감시자를 추가할 수 없다
 
 
 익스텐션이 타입에 추가할 수 있는 기능
 - 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
 - 타입 메서드 / 인스턴스 메서드
 - 이니셜라이저
 - 서브스크립트
 - 중첩 타입
 - 특정 프로토콜을 준수할 수 있도록 기능 추가
 새로운 기능을 추가할 수는 있지만 기존에 존재하는 기능을 오버라이드 할 순 없다
*/


/*
 extension SomeType {
    추가기능
 }
 */


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}


var number = 3
number.isOdd
number.isEven

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string = "0"
string.convertToInt()

