//
//  TableCell.swift
//  Create a Drink
//
//  Created by Claire Cho on 4/24/19.
//  Copyright © 2019 Claire Cho. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var imgView: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
