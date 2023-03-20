import UIKit

var dic1 = [Int : String]()

var dic2 = [3.14 : "Pi" , 2.61: "e"]

var dic3 :[Int:String] = [1:"Bir" , 2:"Iki" , 3: "uc"]

var iller = [16: "Bursa" , 34:"Istanbul" , 6:"Ankara"]

iller[35] = "Izmir"
iller[10] = "BalikEsir"

print(iller)

iller.updateValue("Yeni Bursa", forKey: 16)

print(iller)

for (key , value) in iller {
    print("key \(key) , il \(value) ")
}

iller.removeValue(forKey: 10)
print(iller)

iller.isEmpty
iller.count
iller.first

var revers = iller.reversed()
print("tersten \(revers)")
