//
//  ViewControllerC.swift
//  ImageView WebView VideoView
//
//  Created by Oğuz Yürken on 29.03.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func basla(_ sender: Any) {
      
        if let dosyaYolu = Bundle.main.path(forResource: "video", ofType: "mp4"){
           
            let oynatici = AVPlayer(url: URL(filePath: dosyaYolu))
            
            let oynaticiKontrol = AVPlayerViewController()
            
            oynaticiKontrol.player = oynatici
            
            present(oynaticiKontrol, animated: true){
                oynatici.play()
            }
        }
        
    }
    
    

}
