import UIKit

let ifade = {
    print("Closure konusuna giris")
}

ifade()

let toplama = {
    (sayi1:Int , sayi2:Int) -> Int in
    return sayi1 + sayi2
}

toplama(10 , 20)

var sayilar:[Int] = [5,1,-5,20,30]

let siralama1 = sayilar.sorted(by: {sayi1 , sayi2 in sayi1 > sayi2})
let siralama2 = sayilar.sorted(by: {n1 , n2 in n1 < n2})

let siralama3 = sayilar.sorted(by: {$0 > $1})

let siralama4 = sayilar.sorted(by:  < )

print(siralama1)
print(siralama2)
print(siralama3)
print(siralama4)
