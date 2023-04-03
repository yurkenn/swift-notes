//
//  Yemekler.swift
//  Detaylı TableViewCell
//
//  Created by Oğuz Yürken on 3.04.2023.
//

import Foundation

class Yemekler {
    var yemekId:Int?
    var yemekAdi:String?
    var yemekResim:String?
    var yemekFiyat:Double?
    
    init() {
        
    }
    
    init(yemekId: Int, yemekAdi: String, yemekResim: String, yemekFiyat: Double) {
        self.yemekId = yemekId
        self.yemekAdi = yemekAdi
        self.yemekResim = yemekResim
        self.yemekFiyat = yemekFiyat
    }
}
