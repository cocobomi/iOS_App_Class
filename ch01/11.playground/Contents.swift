import UIKit

var number: Int? = 3
print(number) //아직 옵셔널이기 때문에 옵셔널에 포장되어있음
print(number!) //느낌표를 붙혀 강제로 옵셔널을 해제함, 하지만 이 방식은 강제이므로 위험성이 큼


//변수 또는 상수로 선언
if let result = number {
    print(result)
} else {
    
}


//guard문으로 옵셔널 추출
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}


test()

//컴파일러가 자동적으로 옵셔널 해제함
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}


//묵시적 해제
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
