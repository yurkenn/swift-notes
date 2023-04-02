//
//  ViewController.swift
//  Custom Cell TableView
//
//  Created by Oğuz Yürken on 2.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Oguz", kisiTel: "121412414")
        let k2 = Kisiler(kisiId: 2, kisiAd: "ahjn", kisiTel: "3232")
        let k3 = Kisiler(kisiId: 3, kisiAd: "semih", kisiTel: "5657y")
        let k4 = Kisiler(kisiId: 4, kisiAd: "osman", kisiTel: "533557")
        let k5 = Kisiler(kisiId: 5, kisiAd: "mahmut", kisiTel: "89808")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource,TableViewHucreProtocol{
    func hucreUzerindekiButtonTikladi(indexPath: IndexPath) {
        print("butona tiklandi \(kisilerListe[indexPath.row].kisiAd!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // kac bolum
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count // kac satir
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewCell // downcasting yaparak TableViewCelle eristik
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!)-\(gelenKisi.kisiTel!)" // TableViewCell icerisindeki kisiAdLabeli degistirdik.
        
        // protocolu her bir hucrede aktif etmek icin burada calistiriyoruz
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenKisi = kisilerListe[indexPath.row]
        print(gelenKisi.kisiId!)
    }
}
