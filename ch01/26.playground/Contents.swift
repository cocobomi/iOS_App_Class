import UIKit

/*
 고차 함수 - 다른 함수를 전달 인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수
 - map
 - filter
 - reduce
 */


//map
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}
print("map \(mapArray)")


//filter
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0 > 5 }
print("filter \(filterArray)")


//reduce
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) {
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    return result + element
}

print("reduce \(reduceResult)")
