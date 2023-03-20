import UIKit

let okul : [Int : String] = [125: "Ahmet" , 51: "Ogz" , 82: "Semih" , 35:"Ahmet"]

let sonuc = okul.filter({$0.key > 50})
print(sonuc)

let sonuc1 = okul.filter({$0.value == "Ahmet"})
print(sonuc1)

var sonuc2 = okul.filter({$0.value == "Ahmet" && $0.key > 60})
print(sonuc2)
