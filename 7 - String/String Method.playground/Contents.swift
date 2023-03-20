import UIKit

var str1 = "merhaba"

if str1.contains("erx") {
    print("iceriyor")
}else{
    print("icermiyor")
}

str1.insert("w", at: str1.index(str1.startIndex, offsetBy: 2))

str1.remove(at: str1.index(str1.startIndex, offsetBy: 2))

print(str1)
