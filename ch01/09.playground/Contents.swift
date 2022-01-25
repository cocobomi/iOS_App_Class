import UIKit

/*
 for 루프상수 in 순회대상 {
    실핼할 구문
 }
 */

for i in 1...4 {
    print(i)
}


//배열을 활용한 순회대상
let array = [1,2,3,4,5]

for i in array {
    print(i)
}


/*
 while 조건식 {
    실행할 구문
 }
 */


var number = 5

while number < 10 {
    number+=1
}

number


/*
 repeat {
    실핼할 구문
 } while 조건식
 */


//while문과 다른점은 적어도 한번은 반드시 구문을 실행한다
var x = 6

repeat {
    x+=2
} while x < 5
            
            
print(x) //조건에 맞지 않지만 한번은 실행 되기때문에 8 출력
