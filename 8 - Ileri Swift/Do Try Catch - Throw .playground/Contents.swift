import UIKit

enum Hatalar:Error {
    case sifiraBolunmeHatasi
}

func bolme(s1:Int , s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
}

var s1 = 10
var s2 = 2


do {
    let sonuc = try bolme(s1: s1, s2: s2)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("s2 0 a esittir bolunemez")
}

let sonuc = try? bolme(s1: s1, s2: s2)

if sonuc == nil {
    print("hata olsutugu icin sonuc nil")
} else {
    print("hata yok : \(sonuc!)")
}
