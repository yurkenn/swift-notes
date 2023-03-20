import UIKit

class Kisiler {
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init(ad:String , yas:Int , adres:Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
}

class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String , ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il: "Edirne", ilce: "Havsa")
let kisi = Kisiler(ad: "oguz", yas: 20, adres: adres)

print("kisi adi: \(kisi.ad!) , yas \(kisi.yas!) , adres \(kisi.adres!.il!) ilce \(kisi.adres!.ilce!)")


class Kategoriler {
    var kategori_id:Int?
    var ketegori_ad:String?
    
    // shadowing
    init(kategori_id:Int , ketegori_ad:String) {
        self.kategori_id = kategori_id
        self.ketegori_ad = ketegori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int , yonetmen_ad:String) {
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class FimlerTablosu {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int , film_ad:String , film_yil:Int , kategori:Kategoriler , yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
        
    }
    
}


var k1 = Kategoriler(kategori_id: 1, ketegori_ad: "Dram")
var k2 = Kategoriler(kategori_id: 2, ketegori_ad: "Komedi")
var k3 = Kategoriler(kategori_id: 3, ketegori_ad: "Aksiyon")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "NBC")
var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quantin T")
var y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nolan")

var f1 = FimlerTablosu(film_id: 1, film_ad: "Djongo", film_yil: 2013, kategori: k1, yonetmen: y2)

print(f1.film_id! , f1.film_ad! ,f1.kategori!.kategori_id! , f1.kategori!.ketegori_ad!)
