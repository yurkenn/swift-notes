import UIKit

// Rastgele Sayi

for _ in 1...10 {
    let rastgeleSayi = Int(arc4random_uniform(10)) // 0 ila 9 arasi
    //print(rastgeleSayi)
}

// Rastgel sayi Yontem 2

for _ in 1...10 {
    let rastgeleSayi = Int.random(in: 0...9) // 0 ila 9 arasinda rastgele sayi uretir
}

// Matematiksel islemler

let c = ceil(6.5) // yukari yuvarlar
print(c)

let f = floor(6.5) // asagi yuvarlar
print(f)

let s = sqrt(9.0) // kokunu alir
print(s)

let p = pow(2.0, 3.0) // ustlu sayi
print(p)

let a = abs(-10) // mutlak deger icerindeki sayiyi pozitife cevirir
print(a)

let mx = max(100, 200)
print(mx)
// max ve min sayilar
let mn = min(100, 200)
print(mn)

// Tarihsel

let tarih = Date()

let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)

let ay = takvim.component(.month, from: tarih)

let gun = takvim.component(.day, from: tarih)

let saat = takvim.component(.hour, from: tarih)

let dakika = takvim.component(.minute, from: tarih)

let saniye = takvim.component(.second, from: tarih)

print(tarih)
print(takvim)
print(yil)

// Olcu birimleri

let metre = Measurement.init(value: 40, unit: UnitLength.meters) // 40m
let km = Measurement.init(value: 40, unit: UnitLength.kilometers) // 40km
print(km)

let sonuc = metre + km
print(sonuc)

let a1 = sonuc.converted(to: .kilometers)
print(a1)

let a2 = sonuc.converted(to: .miles)
print(a2)

let frekans = Measurement.init(value: 1000, unit: UnitFrequency.microhertz)
print(frekans)

let f1 = frekans.converted(to: .gigahertz)
print(f1)

let sicaklik = Measurement.init(value: 30, unit: UnitTemperature.celsius)
print(sicaklik)
