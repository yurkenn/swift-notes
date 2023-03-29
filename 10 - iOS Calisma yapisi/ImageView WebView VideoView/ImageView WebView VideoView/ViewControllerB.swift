//
//  ViewControllerB.swift
//  ImageView WebView VideoView
//
//  Created by Oğuz Yürken on 29.03.2023.
//

import UIKit
import WebKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        
        webView.load(URLRequest(url: url))
        // Do any additional setup after loading the view.
    }
    

 

}
