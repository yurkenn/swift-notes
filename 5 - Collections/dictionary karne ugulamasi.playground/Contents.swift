import UIKit

var derlerNotlar = [String : Int]()

derlerNotlar["Tarih"] = 90
derlerNotlar["Fizik"] = 30
derlerNotlar["Matematik"] = 70
derlerNotlar["Kimya"] = 40
derlerNotlar["Biyoloji"] = 20

var sum = 0
for (key , value) in derlerNotlar {
    print("\(key) : \(value)")
   sum = sum + value
}

print("Toplam :\(sum) , Ortalama \(sum / derlerNotlar.count)")
