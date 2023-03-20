import UIKit

var notlar = [Int]()
var dersler = [String]()

dersler.append("Tarih")
notlar.append(20)

dersler.append("Mat")
notlar.append(30)

dersler.append("Biyo")
notlar.append(60)

dersler.append("Turkce")
notlar.append(50)
var toplam = 0

for i in 0...(notlar.count - 1) {
    print("\(dersler[i]) : \(notlar[i])")
   toplam = toplam + notlar[i]
}

print("Toplam \(toplam)")
print("Ortalama : \(toplam/dersler.count)")
