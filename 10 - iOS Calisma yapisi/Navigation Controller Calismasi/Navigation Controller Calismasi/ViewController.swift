//
//  ViewController.swift
//  Navigation Controller Calismasi
//
//  Created by Oğuz Yürken on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        //self.navigationItem.title = "Baslik Sa"
        //self.navigationItem.prompt = "Aciklama Kod ile AS"
        
        //self.navigationItem.largeTitleDisplayMode = .never
        
        //let resim = UIImage(named: "navBaslik")
        //self.navigationItem.titleView = UIImageView(image: resim)
    }

    @IBAction func playTikla(_ sender: Any) {
        print("Play tiklandi")
    }
    
    @IBAction func kalpTikla(_ sender: Any) {
     print("Kalp TIklandi")
    }
    
    
    @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 :
            print("First Tiklandi")
        case 1 :
            print("Second Tiklandi")
        default:
            break
        }
        
    }
}

