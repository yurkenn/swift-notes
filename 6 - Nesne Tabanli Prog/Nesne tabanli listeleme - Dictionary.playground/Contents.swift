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
var o1 = Ogrenci(no: 22, ad: "OGuz", sinif: "12A")
var o2 = Ogrenci(no: 12, ad: "Mehemt", sinif: "11C")
var o3 = Ogrenci(no: 42, ad: "Ahmet", sinif: "10B")


var ogrenciListes = [Int:Ogrenci]()

ogrenciListes[o1.no!] = o1
ogrenciListes[o2.no!] = o2
ogrenciListes[o3.no!] = o3

print(ogrenciListes[22]!.ad!)

for (ogrenciNo, nesne) in ogrenciListes {
    print("**********")
    print("Ogrenci no : \(ogrenciNo)")
    print("Ogrenci ad : \(nesne.ad!)")
    print("Ogrenci sinif : \(nesne.sinif!)")
}
