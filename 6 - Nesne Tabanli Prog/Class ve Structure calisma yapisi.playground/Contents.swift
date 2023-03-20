import UIKit

struct Urun {
    var ad : String?
    var fiyat : Double?
}

class Araba {
    var renk : String?
    var kapasite : Int?
}

var laptop = Urun()

var bmw = Araba()

laptop.ad = "Macbook"
laptop.fiyat = 20.999

bmw.renk = "Kirmizi"
bmw.kapasite = 2

if let color = bmw.renk {
    print(color)
}

var tv = Urun()

tv.ad = "Samsung"
tv.fiyat = 19.999

var limuzin = Araba()

limuzin.renk = "Beyaz"
limuzin.kapasite = 8

if let limuzin = limuzin.kapasite {
    print(limuzin)
}
