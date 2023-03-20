import UIKit
//1
class Odev1 {
    func donustur(derece:Double) -> Double  {
        let fah = derece * 1.8 + 32
        return fah
    }
}

let o = Odev1()
o.donustur(derece: 20)

//2
class Odev2 {
    func diktortgen(kisaKenar k:Int , uzunKenar u:Int) -> Int {
        let cevre = 2 * (k + u)
        print("diktortgenin cevresi \(cevre) dir")
        return cevre
    }
}
let dik = Odev2()
dik.diktortgen(kisaKenar: 3, uzunKenar: 6)


//3 Faktoriyel hesaplama
class Odev3 {
    func faktoriyelHesaplama(sayi:Int) -> Int {
        var sonuc = 1
        for i in 1...sayi {
            sonuc = sonuc + i
        }
        return sonuc
    }
}

let fak = Odev3()

let gelenVeri = fak.faktoriyelHesaplama(sayi: 4)
print(gelenVeri)

//4
class Odev4 {
    func kelimeAdetiBul(kelime:String , harf:Character) {
        var sonuc = 0
        
        for k in kelime {
            if k == harf {
                sonuc += 1
            }
        }
        print("Harf sayisi \(sonuc)")
    }
}

let kelime = Odev4()
kelime.kelimeAdetiBul(kelime: "adanamerkez", harf: "a")


//5
func aciToplami(kenarSayisi n:Int) -> Int {
    let toplam = (n-2)*180
    return toplam
}

aciToplami(kenarSayisi: 5)

//6
class Odev6 {
    func maasHesapla(gunSayisi:Int) -> Int {
        let calismaSaati = gunSayisi * 8
        var maas = 0
        
        if calismaSaati > 160 {
            let mesaiFazlasi = calismaSaati - 160
            maas = 160*10 + mesaiFazlasi*20
        }else{
            maas = calismaSaati * 10
        }
        return maas
    }
}

let o6 = Odev6()
let sonuc = o6.maasHesapla(gunSayisi: 22)
print(sonuc)

//7

class Odev7 {
    func internetUcreti(GB:Int) -> Int {
        var ucret = 0
        
        if GB > 50 {
            let kotaFazlasi = GB - 50
            ucret = 100 + kotaFazlasi * 4
        }else {
            ucret = 100
        }
        return ucret
    }
}

let o7 = Odev7()
print(o7.internetUcreti(GB: 100))
