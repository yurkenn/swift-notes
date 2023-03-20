import UIKit

// IF Else
func kisiTanima(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else{
        print("Taninamyan kisi")
    }
}

kisiTanima(ad: "Ahmet")

// GUARD
func kisiTanima1(ad:String){
    guard ad == "Ahmet" else {
        print("Taninmayan kisi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanima1(ad: "Ahmet")


// optinal if

func buyukHarfYap(harf:String?) {
    if let temp = harf {
        print(temp.uppercased())
    }else{
        print("Harf nil dir")
        return
    }
}

buyukHarfYap(harf: "ag")


// optinal guard
func buyukHarfYap1(str:String?){
    guard let temp = str else {
        print("Harf nil dir")
        return
    }
    print(temp.uppercased())
}


buyukHarfYap1(str: "oguz")
