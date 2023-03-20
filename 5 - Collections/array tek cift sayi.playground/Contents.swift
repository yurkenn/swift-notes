import UIKit

var sayilar = [1,23,54,78,90,34,21,45,64,80]

var tek = [Int]()
var cift = [Int]()

for s in sayilar {
    let sonuc = s % 2
    if sonuc == 0 {
        cift.append(s)
    }
    if sonuc == 1 {
        tek.append(s)
    }
}

print("Tek \(tek)")
print("Cift \(cift)")
