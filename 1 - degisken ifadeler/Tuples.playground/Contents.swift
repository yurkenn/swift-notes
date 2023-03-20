import UIKit

// Veri okuma

var kisi = ("ahmet", "mehmet")

var ad = kisi.0
var soyad = kisi.1

print(ad)
print(soyad)

var nokta = (x:10 , y:20)
print(nokta.x)
print(nokta.y)

// veri atama
var hataMesaji = (404, "not found")

var (kod , mesaj) = hataMesaji

print(kod , mesaj)

// ic ice
var ogrenci : (Int , (Bool , String)) = (1214, (true , "Ahmet"))

print(ogrenci.0)
print(ogrenci.1)
print(ogrenci.1.1)
