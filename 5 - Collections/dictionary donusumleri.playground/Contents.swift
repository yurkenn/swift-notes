import UIKit

var dersler = ["kimya" , "mat" , "edebiyat"]
var notlar = [56,24,62]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))
print(dersNotlari)

var urunFiyatlari : [Double:String] = [16.22: "Kitap" , 34.23:"tsirt" , 23.124:"Saat"]

var fiyatlar = [Double](urunFiyatlari.keys)

var urunler = [String](urunFiyatlari.values)

