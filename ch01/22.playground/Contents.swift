import UIKit

/*
 열거형 - 연관성이 있는 값을 모아 놓은 것
 */


//한 줄로도 나열가능 ex) case north, south, east, west
enum CompassPoint: String { //특정 타입의 값을 원시값으로 가지게 하려면 열거형 이름 오른쪽에 타입을 명시해주면 된다
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east
direction = .west //컴파일러가 direction 변수는 이제 CompassPoint 열거형 타입이란걸 추론하기때문에 열거형의 이름을 안써줘도 된다


//열거형은 switch와 사용하면 다양하게 활용할 수 있다
switch direction {
case .north:
    print(direction.rawValue) //원시값을 출력하게 함
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

//원시값을 가지고 열거형을 반환하게 할 수 있다. 열거형 인스턴스를 생성할때 매개변수로 원시 값을 넘겨주면 됨
let direction2 = CompassPoint(rawValue: "남") //south가 뜨는 것을 볼 수 있다


enum PhoneError {
    case unknown
    case batteryLow(String) //항목의 연관 값을 추가하려면 항목옆에 연관 값의 타입을 소괄호로 묶어주면 됨
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")


switch error {
case .batteryLow(let message):
    print(message)
    
case .unknown:
    print("알 수 없는 에러입니다.")
}
