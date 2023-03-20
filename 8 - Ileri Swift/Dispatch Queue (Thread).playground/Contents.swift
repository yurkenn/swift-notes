import UIKit

let queue1 = DispatchQueue(label: "etiket1", qos: DispatchQoS.userInitiated)

var gecikme: DispatchTimeInterval = .seconds(2)
print(Date())
queue1.asyncAfter(deadline: .now() + gecikme){
    print(Date())
}




