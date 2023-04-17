//
//  ViewController.swift
//  File Islemleri Uygulama
//
//  Created by Oğuz Yürken on 14.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFielGirdi: UITextField!
    
    @IBOutlet weak var resimTutucu: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yaz(_ sender: Any) {
        
        let mesaj:String = textFielGirdi.text!
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do {
                try mesaj.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                
                textFielGirdi.text = ""
                
            } catch {
                print("Dosya yazilirken hata olustu")
            }
            
        }
        
    }
    @IBAction func oku(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do {
                textFielGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
                
            } catch {
                print("Dosya okurken hata olustu")
            }
            
        }
    }
    @IBAction func sil(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
            
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textFielGirdi.text = ""
                    
                } catch {
                    print("Dosya silinirken hata olustu")
                }
                
            }
            
        }
        
    }
    @IBAction func resimKaydet(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            let resim = UIImage(named: "resim")
            
            do {
                try resim!.pngData()?.write(to: dosyaYolu)
                
            } catch {
                print("Resim yazilirken hata olustu")
            }
            
        }
        
    }
    @IBAction func resimGoster(_ sender: Any) {
    
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            self.resimTutucu.image = UIImage(contentsOfFile: dosyaYolu.path)
        }
        
    }
    @IBAction func resimSil(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
            
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    
                    
                } catch {
                    print("Dosya silinirken hata olustu")
                }
                
            }
            
        }
    }
    
}

