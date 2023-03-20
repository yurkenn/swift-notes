import UIKit

class DersNotlar {
    var ders:String?
    var not:Int?
    
    init(ders:String , not:Int) {
        self.ders = ders
        self.not = not
    }
}

var d1 = DersNotlar(ders: "Tarih", not: 90)
var d2 = DersNotlar(ders: "Mat", not: 50)
var d3 = DersNotlar(ders: "Turkce", not: 70)
var d4 = DersNotlar(ders: "Kimya", not: 40)
var d5 = DersNotlar(ders: "Fizik", not: 20)

var dersNotlariListesi = [DersNotlar]()

dersNotlariListesi.append(d1)
dersNotlariListesi.append(d2)
dersNotlariListesi.append(d3)
dersNotlariListesi.append(d4)
dersNotlariListesi.append(d5)

var toplam = 0

for d in dersNotlariListesi {
    print("\(d.ders!) - \(d.not!)")
    toplam = toplam + d.not!
    
}

let ortalama = toplam / dersNotlariListesi.count

if ortalama >= 50 {
    print("Sinifta kaldin - Notun: \(ortalama)")
} else {
    print("Gectin - Notun: \(ortalama)")
}

