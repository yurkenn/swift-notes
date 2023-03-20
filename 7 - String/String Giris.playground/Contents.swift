import UIKit

// Tanimlama
let stringA = "Merhaba"

let stringB = String("Merhaba Nesne")

let stringC = """
Merhaba nasilsiniz
bu bir swift egitimidir

umarim faydali oluyordur...
"""

print(stringC)

// bos kontrolu

var str1 = ""

if str1.isEmpty {
    print("str1 bos")
}else{
    print("str1 bos degil")
}

var str2 = String()

if str2.isEmpty {
    print("str2 bos")
}else{
    print("str2 bos degil")
}

// Veri ekleme
let a = 20
let b = 100

let str3 = "\(a)*\(b)=\(a*b)"
print(str3)

//String birlestirme tavsye edilmez

let str4 = "merhaba"
let str5 = " dunya!"

let sonuc = str4 + str5
print(sonuc)



// boyutu

let str6 = "Merhba Swift" //bosluklarda sayilir
print("\(str6) boyutu : \(str6.count)")

// karsilastirma

let str7 = "merhaba"
let str8 = "merhaba dunya"

if str7 == str8 {
    print("\(str7) ve \(str8) esit")
}else{
    print("\(str7) ve \(str8) esit degildir")
}

// parcalama

let strr = "merhaba"

for harf in strr {
    print(harf , terminator: "-")
}
