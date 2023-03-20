import UIKit

func hesapla(sayi1:Int , sayi2:Int) -> Int? {
    let sonuc = sayi1 * sayi2 + sayi1
    return sonuc
}

var a = hesapla(sayi1: 2, sayi2: 5)
//print(a!)
if let t = a {
    print("sonuc :\(t)")
}
