import UIKit

protocol Squeezable {
    func howToSqueez()
}

protocol Eatable {
    func howToEat()
}

class Aslan {
    
}

class Tavuk:Eatable {
    func howToEat() {
        print("Firinda kizart")
    }
}

class Elma:Squeezable,Eatable {
    func howToSqueez() {
        print("Blender ile sik")
    }
    func howToEat() {
        print("Dilimle ve ye")
    }
}

class AmasyaElmasi:Elma {
    override func howToEat() {
        print("Yika ve ye")
    }
}

var aslan = Aslan()
var amasyaElmasi:Elma = AmasyaElmasi()
var elma = Elma()
var tavuk:Eatable = Tavuk()

var nesneler = [aslan , elma , amasyaElmasi , tavuk] as [Any]

for nesne in nesneler {
    if nesne is Eatable {
        (nesne as! Eatable).howToEat()
    }
    if nesne is Squeezable {
        (nesne as! Squeezable).howToSqueez()
    }
    
}
