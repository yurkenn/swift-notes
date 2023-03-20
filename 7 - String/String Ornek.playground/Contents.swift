import UIKit

var greeting = "Hello"

var harfler = [Character]()

for letter in greeting {
    print(letter)
    harfler.append(letter)
}

print(harfler)

for i  in stride(from: (harfler.count - 1), through: 0, by: -1) {
    print(harfler[i], terminator: "")
}
