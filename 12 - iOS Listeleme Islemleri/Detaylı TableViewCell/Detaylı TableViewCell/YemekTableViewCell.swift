//
//  YemekTableViewCell.swift
//  Detaylı TableViewCell
//
//  Created by Oğuz Yürken on 3.04.2023.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func siparisVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {
    @IBOutlet weak var yemekResimImageView: UIImageView!
    
    @IBOutlet weak var labelYemekAdi: UILabel!
    
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var hucreProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func siparisVerButton(_ sender: Any) {
        hucreProtocol?.siparisVer(indexPath: indexPath!)
    }
}
