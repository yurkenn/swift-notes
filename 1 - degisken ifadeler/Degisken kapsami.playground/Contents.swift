import UIKit

class Deneme {
    var x = 10 // Global
    var y = 20 // Global
    
    func topla () {
        var x = 40 // Local
        x = x + y // 40 + 20
        print(x)
    }
    func carp (){
        x = x + y // 10 + 20
        print(x)
    }
}


var d = Deneme()

d.topla()
d.carp()
