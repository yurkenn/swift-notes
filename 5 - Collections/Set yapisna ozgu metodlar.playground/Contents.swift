import UIKit

let tekler : Set = [1,3,5,7,9]
let ciftler : Set = [0,2,4,6,8]
let asal : Set = [2,3,5,7]

let dizi = tekler.union(ciftler).sorted()
print(dizi)


let dizi1 = tekler.intersection(ciftler).sorted()
print(dizi1)

let dizi2 = tekler.subtracting(asal)
print(dizi2)

let dizi3 = tekler.symmetricDifference(asal).sorted()
print(dizi3)
