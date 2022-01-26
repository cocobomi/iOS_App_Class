import UIKit

/*
프로퍼티 - 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻함
- 저장 프로퍼티
- 연산 프로퍼티
- 타입 프로퍼티
*/

//저장 프로퍼티
struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "gunter", gender: "Male")
print(dog)

dog.name = "코코"

print(dog)

let dog2 = Dog(name: "gunter", gender: "male")


class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)




//연산 프로퍼티
struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}


var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice





//프로퍼티 옵져버(저장 프로퍼티, 오버라이딩 된 저장 계산 프로퍼티에서만 사용가능), newValue와 oldValue는 이름을 지정하지 않아 기본이름임
class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000



//타입 프로퍼티
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int {
        return 1
    }
}


SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
