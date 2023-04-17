//
//  ViewController.swift
//  Core Data Giriş
//
//  Created by Oğuz Yürken on 17.04.2023.
//

import UIKit
import CoreData

//en tepeye yazarak global olarak istedigimiz sayfadan cagirabiliyoruz. appDelegate ile veri okuma veri yazma gibi islemleri yapicaz.
let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    // veri kayit gibi islemleri yapabilmek icin context gerekiyor
    let context = appDelegate.persistentContainer.viewContext

    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //veriKaydi()
        //veriOkume()
        //veriSil()
        //veriGuncelle()
        //veriOkume()
        //veriSiralama()
        veriFiltreleme()
    }

    func veriKaydi() {
        
        let kisi = Kisiler(context: context)
        kisi.kisi_yas = 12
        kisi.kisi_ad = "zeynep"
        
        appDelegate.saveContext()
    }
    
    func veriOkume(){
        do {
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
        } catch  {
            printContent("veri okurken hata")
        }
        for k in kisilerListe{
            print("ad:\(k.kisi_ad!) - yas:\(k.kisi_yas)")
        }
    }
    
    func veriSiralama(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: false) // false buyukten kucuge siralar
        
        fetchRequest.sortDescriptors = [sort]
        
        do {
            kisilerListe = try context.fetch(fetchRequest)
        } catch  {
            printContent("veri okurken hata")
        }
        for k in kisilerListe{
            print("ad:\(k.kisi_ad!) - yas:\(k.kisi_yas)")
        }
    }
    
    func veriFiltreleme(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        // i integer @ string
        //fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 31)
        //fetchRequest.predicate = NSPredicate(format: "kisi_ad == %@", "Oguz Yurken")
        //fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i and kisi_ad == %@", 25,  "Oguz Yurken")
        fetchRequest.predicate = NSPredicate(format: "kisi_ad CONTAINS %@ ", "a")
 
        do {
            kisilerListe = try context.fetch(fetchRequest)
        } catch  {
            printContent("veri okurken hata")
        }
        for k in kisilerListe{
            print("ad:\(k.kisi_ad!) - yas:\(k.kisi_yas)")
        }
    }
    
    func veriSil(){
        let kisi = kisilerListe[1]
        self.context.delete(kisi)
        
        appDelegate.saveContext()
    }
    
    func veriGuncelle(){
        let kisi = kisilerListe[0]
        kisi.kisi_ad = "Oguz Yurken"
        
        appDelegate.saveContext()
    }
    
    
}

