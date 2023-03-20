import UIKit

class Hesaplayici {
    func topla(sayi1:Int , sayi2:Int) -> Int {
        return sayi1 + sayi2
    }
    func topla(sayi1:Int , sayi2:Double) -> Int {
        return sayi1 + Int(sayi2)
    }
    func topla(sayi1:Double , sayi2:Int) -> Int {
        return Int(sayi1) + sayi2
    }
    func topla(sayi1:Int , sayi2:Int , ad:String) {
        print("Toplama yapan \(ad) Sonuc: \(sayi1+sayi2)")
    }
   
}
var h = Hesaplayici()

h.topla(sayi1: 2, sayi2: 4)
h.topla(sayi1: 1, sayi2: 2, ad: "oguz")
