import UIKit
import Foundation

/*
에러 처리 - 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정
 swift의 에러 처리
 - 발생(throwing)
 - 감지(catching)
 - 전파(propagating)
 - 조작(manipulating)
 */

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//오류를 발생 시킬 수 있음
//throw PhoneError.batteryLow(batteryLevel: 20)


/*
swift 오류를 처리하는 4가지 방법
 - 함수에서 발생한 오류를 해당함수를 호출한 코드에 전파하는 방법
 - do-catch구문을 이용해서 오류를 처리
 - 옵셔널 값으로 오류를 처리
 - 오류가 발생하지 않을 것이라고 확신하는 방법
*/


//오류가 발생할 수 있음을 나타내기 위해서는 함수, 매개변수, 생성자 매개변수 뒤에 throws라는 키워드를 사용하면 됨
func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}


/*
 do {
    try 오류 발생 가능코드
 } catch 오류 패턴 {
    처리 코드
 }
 */


//오류를 발생시켜도 catch문이 오류를 잡아 개발자가 오류상황에 맞는 대처를 할 수 있다
do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLebel) {
    print("배터리 전원 부족 남은 배터리: \(batteryLebel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
}



//try?를 사용하면 오류를 옵셔널 값으로 변환하여 처리가능, 동작하던 코드가 오류를 던지면 코드의 반환값은 nil이 된다.
let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)


//try!는 try?와 유사하지만 throwing함수나 메서드가 에러를 던져주지 않을거라고 확신할 때 사용하는 방법
let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)
