import UIKit

var dizi = Set <Int>()

var dizi2 : Set = ["bursa" , "istabul", "ankara"]

var dizi3: Set<Float> = [10.9 , 2.3 , 4.9 , 30.0]

var meyveler : Set = ["cilek" , "elma" , "kiraz" , "muz"]

for (index , meyve) in meyveler.enumerated() {
    print("\(index): \(meyve)")
}

meyveler.insert("Armut")
print(meyveler)
// aynisindan eklenmez


meyveler.insert("Armut")
print(meyveler)

meyveler.isEmpty
meyveler.count
meyveler.first

meyveler.contains("Muz")

meyveler.max()
meyveler.min()

meyveler.removeAll()
