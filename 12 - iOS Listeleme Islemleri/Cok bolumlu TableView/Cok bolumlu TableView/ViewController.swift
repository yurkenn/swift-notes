//
//  ViewController.swift
//  Cok bolumlu TableView
//
//  Created by Oğuz Yürken on 2.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var bolumler = ["Meyveler","Renkler","Mevsimler"] // başlık
    
    var bolumVeriler = [["Elma,Muz,Cilek,Ayva"],["kirmizi","mavi","yesil"],["yaz","kis"]] //içerik
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count // Kaç bölümden oluşacağını yazıyoruz
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumVeriler[section].count // içerik sayısına erişip kaç adet olduğunu yazıyoruz
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bolumler[section] // başlık(section) belirliyoruz
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreAdi", for: indexPath) // hücremizi tanımlıyoruz
        
        cell.textLabel?.text = bolumVeriler[indexPath.section][indexPath.row] // hücremizin içine önce bölümü sonra içerik bilgilerini yazıyoruz. indexPath ile index numaralarına göre sıralı şekilde ekrana yazıyoruz

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // hangi bölümde neyin seçili olduğunu görüyoruz
        print("\(bolumler[indexPath.section]) bolumunde \(bolumVeriler[indexPath.section][indexPath.row])")
    }
    
}
