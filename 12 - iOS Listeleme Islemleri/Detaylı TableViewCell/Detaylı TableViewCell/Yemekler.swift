//
//  Yemekler.swift
//  Detaylı TableViewCell
//
//  Created by Oğuz Yürken on 8.04.2023.
//

import Foundation

class Yemekler {
    var yemekId:Int?
    var yemekAdi:String?
    var yemekResimAdi:String?
    var yemekFiyat:Double?
    
    init(){
        
    }
    
    init(yemekId:Int, yemekAdi:String, yemekResimAdi:String, yemekFiyat:Double) {
        self.yemekAdi = yemekAdi
        self.yemekFiyat = yemekFiyat
        self.yemekId = yemekId
        self.yemekResimAdi = yemekResimAdi
    }
}
