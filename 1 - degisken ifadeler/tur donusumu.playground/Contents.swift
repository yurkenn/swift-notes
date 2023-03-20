import UIKit

var i : Int = 42
var d : Double = 42.24
var f : Float = 42.32

// sayisaldan sayisala
var sonuc1 : Int = Int(d)
var sonuc2 : Double = Double(i)
var sonuc3 : Int = Int(f)

print(sonuc1)
print(sonuc2)
print(sonuc3)
// sayisaldan metine
var str = String(i)
var str2 = String(d)
var str3 = String(f)

print(str)
print(str2)
print(str3)

// metinden sayisala

//24 , 48t ,+3424 , h326

var yazi1 = "35"

if let sayi1 = Int(yazi1) {
    print(sayi1)
}

var yazi2 = "53T" // T sayiya donemyecegi icin if calismaz

if let sayi2 = Int(yazi2) {
    print(sayi2)
}
