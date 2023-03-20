import UIKit

class Kisiler {
    var kisiNo:Int?
    var kisiAdi:String?
    
    init(kisiNo:Int , kisiAdi:String) {
        self.kisiAdi = kisiAdi
        self.kisiNo = kisiNo
    }
}

let kisi1 = Kisiler(kisiNo: 1, kisiAdi: "Ahmet")
let kisi2 = Kisiler(kisiNo: 2, kisiAdi: "Zeynep")
let kisi3 = Kisiler(kisiNo: 3, kisiAdi: "OGuz")

var kisilerArray = [Kisiler]()

kisilerArray.append(kisi1)
kisilerArray.append(kisi2)
kisilerArray.append(kisi3)

print("Once")
for k in kisilerArray {
    print("\(k.kisiNo!) - \(k.kisiAdi!)")
}

print("Sayisal Buyukten Kucuge")

let siralama1 = kisilerArray.sorted(by: {$0.kisiNo! > $1.kisiNo!})

for k in siralama1 {
    print("\(k.kisiNo!) - \(k.kisiAdi!)")
}


print("Sayisal Kucukten Buyuge")

let siralama2 = kisilerArray.sorted(by: {$0.kisiNo! < $1.kisiNo!})

for k in siralama2 {
    print("\(k.kisiNo!) - \(k.kisiAdi!)")
}

print("Harfsel olarak Buykten Kucuge")
let siralama3 = kisilerArray.sorted(by: {$0.kisiAdi! > $1.kisiAdi!})

for k in siralama3 {
    print("\(k.kisiNo!) - \(k.kisiAdi!)")
}
