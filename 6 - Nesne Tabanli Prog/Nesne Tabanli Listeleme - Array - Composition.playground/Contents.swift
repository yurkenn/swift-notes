import UIKit

class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String , ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel {
    var personelNo:Int?
    var personelIsim:String?
    var personelAdresi: Adres?
    
    init(personelNo:Int , personelIsim:String , personelAdresi:Adres) {
        self.personelNo = personelNo
        self.personelIsim = personelIsim
        self.personelAdresi = personelAdresi
    }
}


var adres1 = Adres(il: "Edirne", ilce: "Havsa")
var adres2 = Adres(il: "Istanbul", ilce: "Kadikoy")
var adres3 = Adres(il: "Ankara", ilce: "Mamak")

var personel1 = Personel(personelNo: 22, personelIsim: "Oguz", personelAdresi: adres1)
var personel2 = Personel(personelNo: 31, personelIsim: "Mahmut", personelAdresi: adres2)
var personel3 = Personel(personelNo: 54, personelIsim: "Zeynep", personelAdresi: adres3)


var personelListesi = [Personel]()

personelListesi.append(personel1)
personelListesi.append(personel2)
personelListesi.append(personel3)

for p in personelListesi {
    print("********")
    print("Personel no: \(p.personelNo!) - Personel Isim \(p.personelIsim!)")
    print("Adresi \(p.personelAdresi!.il!) \(p.personelAdresi!.ilce!)")
    
}
