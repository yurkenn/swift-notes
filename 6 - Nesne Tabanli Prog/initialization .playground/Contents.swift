import UIKit

class Kisiler {
    var ad:String?
    var yas:Int?
    
    init() {
        
    }
    
    init(ad:String , yas:Int) {
        self.ad = ad
        self.yas = yas
    }
}

let kisi = Kisiler()
kisi.ad = "ahmet"
kisi.yas = 22

let kisi2 = Kisiler(ad: "Ogz", yas: 32)

print(kisi2.ad!)
print(kisi2.yas!)
