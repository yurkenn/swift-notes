import UIKit

func islem(sayilar:[Int]) -> (toplam:Int , carpma:Int) {
    var toplam = 0
    var carpma = 1
    
    for s in sayilar {
        toplam = s + toplam
        carpma = s * carpma
    }
    
    return (toplam, carpma)
}

var dizi = [1,24,56,2]

let b = islem(sayilar: dizi)

b.toplam
b.carpma
