//
//  ViewController.swift
//  Basit CollectionView
//
//  Created by Oğuz Yürken on 8.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Turkiye","Almayan","Japon","Rusya","Italya","Suri","Kore","Fransa"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkeler.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! CollectionViewCell
        
        cell.hucreLabel.text = ulkeler[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Secilen Ulke :\(ulkeler[indexPath.row])")
    }
    
}

