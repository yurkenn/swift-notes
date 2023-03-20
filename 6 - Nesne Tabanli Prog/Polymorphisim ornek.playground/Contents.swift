import UIKit

class Personel {
    func iseAlindi() {
        print("Personel Mutlu")
    }
}

class Mudur:Personel {
    func iseAl(p:Personel){
        p.iseAlindi()
    }
    func zamYap(p:Personel){
        if p is Ogretmen{
            (p as! Ogretmen).maasArttir()
        }
        if p is Isci{
            print("Isciye zam yok")
        }
    }
}

class Isci:Personel {
    
}

class Ogretmen:Personel {
    func maasArttir(){
        print("Maas artti.Ogretmen Mutlu")
    }
}

var mudur = Mudur()
var isci:Personel = Isci()
var ogretmen:Personel = Ogretmen()

mudur.iseAl(p: isci)
mudur.iseAl(p: ogretmen)
mudur.zamYap(p: ogretmen)
mudur.zamYap(p: isci)
