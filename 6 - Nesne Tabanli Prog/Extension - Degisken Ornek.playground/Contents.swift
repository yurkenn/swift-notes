import UIKit

extension Double {
    var km:Double {return self * 1000.0}
    var m:Double {return self }
    var cm:Double {return self / 100.0}
    var mm:Double {return self / 1000.0}
}

print("10cm \(10.cm) metredir")
print("20km \(20.km) metredir")

let sayi = 30.0

print("30 mm \(sayi.mm) metredir")
