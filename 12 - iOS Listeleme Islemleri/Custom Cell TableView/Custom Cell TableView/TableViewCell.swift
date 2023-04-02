//
//  TableViewCell.swift
//  Custom Cell TableView
//
//  Created by Oğuz Yürken on 2.04.2023.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTikladi(indexPath:IndexPath)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonTikla(_ sender: Any) {
    
        hucreProtocol?.hucreUzerindekiButtonTikladi(indexPath: indexPath!)
        
    }
}
