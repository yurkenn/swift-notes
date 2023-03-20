import UIKit

var dizi1 = [Int]()

var dizi2:[Float] = [10.0 , 02.0]

var dizi3 = [Int](repeating: 0, count: 3) // [0 , 0 , 0]

var meyveler:[String] = ["elma" , "armut" , "muz" , "kivi"]

for meyve in meyveler {
    print(meyve)
}

for (index , meyve) in meyveler.enumerated() {
    print("indek : \(index) Eleman : \(meyve)")
}

meyveler.append("Karpuz")
meyveler += ["mandalina"]

meyveler[2] = "Ananas"
print(meyveler)

meyveler.insert("Helva", at:2)

meyveler.isEmpty
meyveler.count
meyveler.last
meyveler.first

meyveler.contains("kiraz")

meyveler.max()
meyveler.min()

meyveler.reverse()
meyveler.sort()

meyveler.remove(at: 2)
print(meyveler)

meyveler.removeAll()

print(meyveler)

meyveler.isEmpty
