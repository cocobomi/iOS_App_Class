import UIKit

/*
 상속 - 부모가 자식에게 재산을 물려주는 행위
 
 */


class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("speaker on")
    }
}


/*
 class 클래스 이름: 부모클래스 이름 {
    하위 클래스 정의
 }
 */

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed


//오버라이딩 - 서브클래스는 슈퍼클래스에서 정의된 메서드, 프로퍼티, 서브스크립트 등을 그대로 사용하지 않고 자신만의 기능으로 변경하여 사용가능 (override 키워드 사용)
//만약 같은 이름의 정의가 슈퍼클래스에 없는데 오버라이드를 쓰면 컴파일러 오류가 발생함. 실수를 인지할 수 있음
//또한 슈퍼클래스의 동일한 이름의 정의가 있는데 오버라이드 키워드를 사용하지 않으면 오류가 발생함


class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise() //슈퍼클래스에 정의된 함수를 먼저 출력함
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()



//프로퍼티 오버라이딩
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}


let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)



class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
