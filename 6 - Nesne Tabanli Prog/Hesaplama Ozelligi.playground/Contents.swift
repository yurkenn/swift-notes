import UIKit

class Metamatik {
    var x = 10
    var y = 20
    
    var topla : Int  {
        get {
            return x + y
        }
    }
}

var nesne = Metamatik()
print(nesne.topla)

class Maas {
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMaas:Double {
        get {
            return (maas*bonus)/52
        }
        set (yeniHaftalikMaas) {
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var m = Maas()
print(m.haftalikMaas)

m.haftalikMaas = 600
print(m.maas)
