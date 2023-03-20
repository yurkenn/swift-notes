import UIKit

class Matematik {
    func topla(sayi1:Int, sayi2:Int) -> Int{
        let toplam = sayi1 + sayi2
        print("Toplam \(toplam)")
        return toplam
    }
    func cikar(sayi1:Double , sayi2:Double) -> Double {
        return sayi1 - sayi2
    }
    func carpma(sayi1:Int , sayi2:Int , isim:String) ->Int {
        let sonuc = sayi1 * sayi2
        print("Carpma yapan \(isim) Sonuc: \(sonuc)")
        return sonuc
    }
    func bol(sayi1:Double , sayi2:Double) -> String {
        return "Bolme : \(sayi1 / sayi2)"
    }
}

let m = Matematik()

m.topla(sayi1: 2, sayi2: 5)
m.cikar(sayi1: 3.1, sayi2: 1.2)
m.carpma(sayi1: 5, sayi2: 2, isim: "Oguz")
m.bol(sayi1: 2.3, sayi2: 4.2)
