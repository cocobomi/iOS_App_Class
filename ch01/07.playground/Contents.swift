import UIKit

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)


func hello() -> String {
    return "hello"
}

hello()



func printName() -> Void {
    
}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I`m \(me)")
}

greeting(friend: "Albert")

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I`M \(myName)"
}

sendMessage(from: "Gunter", to: "Json")


