import UIKit

/*
 옵셔널 체이닝 - 옵셔널에 속해 있는 nil 일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정
 옵셔널에 값이 있다면 프로퍼티 메서드 등을 호출할 수 있고, 옵셔널이 nil 이라면 프로퍼티 메서드 등은 nil을 반환한다.
 */

struct Developer {
    var name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

//옵셔널 바인딩없이 옵셔널 체이닝만으로 값에 접근
var developer = Developer(name: "han")
var company = Company(name: "gunter", developer: developer)
print(company.developer)
print(company.developer?.name) //?로 옵셔널체이닝을 하면 접근한 프로퍼티의 값은 항상 옵셔널에 감싸져있다.
print(company.developer!.name) //!로 옵셔널체이닝을 하면 옵셔널 프로퍼티를 강제 언래핑하여 접근하기 때문에 값이 옵셔널로 감싸져있지 않다

