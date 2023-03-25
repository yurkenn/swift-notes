//
//  Kisiler.swift
//  Veri Transferi - Present Modally
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import Foundation

class Kisiler {
    var kisiID: Int?
    var kisiAD: String?
    
    init(){
        
    }
    
    init(kisiID: Int? = nil, kisiAD: String? = nil) {
        self.kisiID = kisiID
        self.kisiAD = kisiAD
    }
}
