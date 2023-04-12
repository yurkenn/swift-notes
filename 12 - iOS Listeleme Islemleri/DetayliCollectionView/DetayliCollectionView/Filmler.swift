//
//  Filmler.swift
//  DetayliCollectionView
//
//  Created by Oğuz Yürken on 12.04.2023.
//

import Foundation



class Filmler {
    var filmId:Int?
    var filmAd:String?
    var filmResimAdi:String?
    var filmFiyat:Double?
    
    init() {
        
    }
    
    init(filmId: Int, filmAd: String, filmResimAdi: String, filmFiyat: Double) {
        self.filmId = filmId
        self.filmAd = filmAd
        self.filmResimAdi = filmResimAdi
        self.filmFiyat = filmFiyat
    }
}
