import UIKit

class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}

class Memeli:Hayvan {
    
}

class Kopek:Memeli {
    override func sesCikar() {
        print("hav hav")
    }
}

class Kedi:Memeli{
    override func sesCikar() {
        print("miyav miyav")
    }
}

var hayvan:Hayvan = Kedi()
hayvan.sesCikar()

var memeli:Hayvan = Kopek()
memeli.sesCikar()
