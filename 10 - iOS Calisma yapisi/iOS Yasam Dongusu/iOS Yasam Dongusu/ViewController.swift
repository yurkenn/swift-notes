//
//  ViewController.swift
//  iOS Yasam Dongusu
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad calisti")
        print("**********************")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear calist")
        print("**********************")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear calisti")
        print("**********************")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear calisti")
        print("**********************")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear calisti")
        print("**********************")
    }
    



}

