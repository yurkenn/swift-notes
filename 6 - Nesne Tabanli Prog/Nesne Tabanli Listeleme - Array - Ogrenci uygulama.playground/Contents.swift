import UIKit

class Ogrenci {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int , ad:String , sinif:String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}


var o1 = Ogrenci(no: 52, ad: "Oguz", sinif: "11A")
var o2 = Ogrenci(no: 79, ad: "Ahmet", sinif: "10C")
var o3 = Ogrenci(no: 71, ad: "Mehmet", sinif: "9D")
var o4 = Ogrenci(no: 65, ad: "Osman", sinif: "12F")
var o5 = Ogrenci(no: 23, ad: "Cem", sinif: "11A")

var ogrenciListse = [Ogrenci]()

ogrenciListse.append(o1)
ogrenciListse.append(o2)
ogrenciListse.append(o3)
ogrenciListse.append(o4)
ogrenciListse.append(o5)

for ogrenci in ogrenciListse {
    print("***********")
    print("Ogrenci No: \(ogrenci.no!)")
    print("Ogrenci Ad: \(ogrenci.ad!)")
    print("Ogrenci Sinif: \(ogrenci.sinif!)")
}
