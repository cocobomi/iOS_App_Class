import UIKit

/*
 protocol 이름 {
 
 )
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStructure: SomeProtocol, SomeProtocol2 {
    
}

/*
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
 
 }
 */


//프로퍼티 요구사항
protocol FirstProtocol {
    var name: Int { get set } //읽기, 쓰기가 가능
    var age: Int { get } //읽기 전용
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}


protocol FullyNames {
    var fullName: String { get set }
}

struct Person: FullyNames {
    var fullName: String


func printFullName() {
    print(fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}


protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}


class SomeClass: SomeProtocol5 {
    required init(){
        
    }
}


