//
//  KisiHucreTableViewCell.swift
//  Kisiler Uygulamasi
//
//  Created by Oğuz Yürken on 17.04.2023.
//

import UIKit

class KisiHucreTableViewCell: UITableViewCell {

    @IBOutlet weak var kisiYaziLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
