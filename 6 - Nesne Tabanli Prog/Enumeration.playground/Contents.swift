import UIKit

enum Renkler {
    case Beyaz
    case Siyah
}

var renk = Renkler.Beyaz

switch renk {
case .Beyaz:
    print("#FFFFF")
case.Siyah:
    print("#0000")
}

enum KonserveBoyut {
    case Kucuk
    case Orta
    case Buyuk
}

var boyut = KonserveBoyut.Orta

switch boyut {
case .Kucuk:
    print(20*30)
case.Orta:
    print(30*40)
case.Buyuk:
    print(40*50)
}
