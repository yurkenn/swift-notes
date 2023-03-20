import UIKit
var sayilar = [Int]()

print(sayilar)

for _ in 1...10 {
    let randomNumber = arc4random_uniform(10) // let randomNum = Int.random(in: 0...9)
    sayilar.append(Int(randomNumber))
}

sayilar.sort()
print(sayilar)
