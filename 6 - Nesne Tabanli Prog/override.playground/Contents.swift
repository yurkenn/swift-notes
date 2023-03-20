import UIKit

class Hayvan {
    func sesCikar(){
        print("sesim yok")
    }
}

class Memeli:Hayvan {
    
}

class Kedi:Memeli {
    override func sesCikar() {
        print("miyav miyaw")
    }
}

class Kopek:Memeli{
    override func sesCikar() {
        print("hav hav")
    }
}


var h = Hayvan()

h.sesCikar()

var m = Memeli()
m.sesCikar()

var k = Kedi()
k.sesCikar()

var kopek = Kopek()
kopek.sesCikar()


