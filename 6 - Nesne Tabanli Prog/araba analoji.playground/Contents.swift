import UIKit

class Araba {
    var renk : String?
    var hiz : Int?
    var calisiyorMu : Bool?
    
    func calistir() {
        calisiyorMu = true
    }
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int) {
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    func bilgiAl(){
        print("Renk: \(renk!)")
        print("Hiz: \(hiz!)")
        print("Calsiyormu: \(calisiyorMu!)")
    }
}

var bmw = Araba()

bmw.hiz = 100
bmw.renk = "Kirmizi"

bmw.calistir()

bmw.bilgiAl()

bmw.durdur()
bmw.calistir()
bmw.bilgiAl()

bmw.hizlan(kacKm: 30)
bmw.yavasla(kacKm: 10)
bmw.hizlan(kacKm: 20)
