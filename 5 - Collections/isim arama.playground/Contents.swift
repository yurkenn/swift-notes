import UIKit

var isimler = ["Ahmet", "mehmet" , "zeynep" , "serhat" , "kadir", "Ahmet"]

var kontrolIsim = "Ahmet"

for i in isimler {
    if i == kontrolIsim {
        print("bu isim dizide mevvut")
        break
    }
}
