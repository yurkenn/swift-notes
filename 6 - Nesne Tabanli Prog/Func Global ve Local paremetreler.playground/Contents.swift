import UIKit

func hesapla(sayi1 s1:Int , sayi2 s2:Int) -> Int? {
    let sonuc = s1 + s2
    return sonuc
}

var h = hesapla(sayi1: 2, sayi2: 3)

if let toplama = h {
    print("sonuc :\(toplama)")
}
