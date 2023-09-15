//
//  TableViewCell.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 6.09.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var drinkImage: UIImageView!
    
    @IBOutlet weak var strGlass: UILabel!
    @IBOutlet weak var strAlcoholic: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

        drinkImage.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
