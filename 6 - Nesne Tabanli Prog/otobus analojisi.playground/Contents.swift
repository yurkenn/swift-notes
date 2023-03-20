import UIKit

class Otobus {
    var kapasite : Int?
    var nerden: String?
    var nereye: String?
    var mevcutYolcu : Int?
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    
    func bilgiAL(){
        print("kapasite: \(kapasite!)")
        print("nereden: \(nerden!)")
        print("nereye: \(nereye!)")
        print("mevcut yolcu: \(mevcutYolcu!)")
    }
}

var kamilKoc = Otobus()

kamilKoc.kapasite = 50
kamilKoc.nerden = "Edirne"
kamilKoc.nereye = "Denizli"
kamilKoc.mevcutYolcu = 22

kamilKoc.bilgiAL()

kamilKoc.yolcuAl(yolcu: 12)

kamilKoc.bilgiAL()

kamilKoc.yolcuIndir(yolcu: 23)
kamilKoc.bilgiAL()
