import UIKit

class Ogrenci:Equatable,Hashable {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int , ad:String , sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    var hashValue: Int {
        get {
            return no.hashValue
        }
    }
    static func == (lhs:Ogrenci , rhs:Ogrenci) -> Bool {
        return lhs.no == rhs.no
    }
}

var o1 = Ogrenci(no: 22, ad: "Oguz", sinif: "12A")
var o2 = Ogrenci(no: 02, ad: "Jale", sinif: "11A")
var o3 = Ogrenci(no: 30, ad: "Zeynep", sinif: "11B")
var o4 = Ogrenci(no: 12, ad: "Mehmet", sinif: "10F")
var o5 = Ogrenci(no: 65, ad: "Ahmet", sinif: "12A")

var ogrenciListesi = Set <Ogrenci>()

ogrenciListesi.insert(o1)
ogrenciListesi.insert(o2)
ogrenciListesi.insert(o3)
ogrenciListesi.insert(o4)
ogrenciListesi.insert(o5)


for ogrenci in ogrenciListesi {
    print("****")
    print("Ogrenci no: \(ogrenci.no!) - \(ogrenci.ad!) - \(ogrenci.sinif!)")
}
