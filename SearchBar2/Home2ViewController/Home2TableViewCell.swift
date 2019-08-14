//
//  Home2TableViewCell.swift
//  SearchBar
//
//  Created by Ari Munandar on 08/08/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class Home2TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
