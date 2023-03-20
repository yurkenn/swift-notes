import UIKit

func selamla() {
    let sonuc = "Merhaba Ahmet"
    print(sonuc)
}

selamla()

func selamla1() -> String {
    let sonuc = "Merhaba Ahmet"
    return sonuc
}

selamla1()

func selamla2(isim:String) -> String {
    let sonuc = "merhaba \(isim)"
    return sonuc
}

selamla2(isim: "Oguz")

func toplama() {
    let toplam = 30 + 40
    print("toplam : \(toplam)")
}

toplama()

func toplama1(sayi1:Int , sayi2:Int) -> Int {
    let sonuc = sayi1 + sayi2
    print(sonuc)
    return sonuc
}

toplama1(sayi1: 2, sayi2: 4)
