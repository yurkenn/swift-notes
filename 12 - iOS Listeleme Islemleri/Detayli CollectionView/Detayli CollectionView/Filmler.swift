//
//  Filmler.swift
//  Detayli CollectionView
//
//  Created by Oğuz Yürken on 12.04.2023.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmBaslik:String?
    var filmResimAdi:String?
    var filmFiyati:Double?

    init() {
        
    }
    
    init(filmId:Int,filmBaslik:String,filmResimAdi:String,filmFiyati:Double) {
        self.filmId = filmId
        self.filmBaslik = filmBaslik
        self.filmResimAdi = filmResimAdi
        self.filmFiyati = filmFiyati
    }
}
