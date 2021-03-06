import UIKit

/*
 if 조건식 {
    실행할 구문
 }
 */

let age = 20

if age < 19 {
    print("미성년자 입니다.")
}


/*
 if 조건식 {
    조건식이 만족하면 해당 구문 실행
 } else {
    만족하지 않으면 해당 구문 실행
 }
 */

if age < 19 {
    print("미성년자")
} else {
    print("성년자")
}

/*
if 조건식1 {
    조건식1을 만족할 때 실행할 구문
} else if {
 조건식2를 만족할 때 실행할 구문
 } else {
 아무 조건식도 만족하지 않을 때 실행할 구문
 }
*/

let animal = "pig"

if animal == "dog" {
    print("강아지 사료 주기")
} else if animal == "cat" {
    print("고양이 사료 주기")
} else {
    print("해당하는 동물 사료가 없음")
}


/*
 if 조건식1 {
     조건식1을 만족할 때 실행할 구문
 } else if {
  조건식2를 만족할 때 실행할 구문
  } else {
  아무 조건식도 만족하지 않을 때 실행할 구문
  }
 */


let color = "green"

switch color {
    case "blue":
        print("파란식 입니다")
    case "green":
        print("초록색 입니다")
    default:
        print("찾는 색상이 없습니다")
}


let temperature = 30

switch temperature {
case -20...9:
    print("겨울 입니다.")
case 10...14:
    print("가을 입니다.")
case 15...25:
    print("봄 입니다.")
case 26...35:
    print("여름 입니다.")
default:
    print("이상 기후입니다.")
}
