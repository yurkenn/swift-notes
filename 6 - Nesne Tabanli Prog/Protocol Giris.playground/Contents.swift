import UIKit

protocol Protocol1 {
    var degisken : Int {
        get set
    }
    
    func metod1()
    func metod2() -> String
}

class ClassA: Protocol1 {
    var degisken = 10
    
    func metod1() {
        print("sa")
    }
    
    func metod2() -> String {
        return "Protocol calismasi"
    }
}
var a = ClassA()

a.degisken
a.metod1()
a.metod2()

