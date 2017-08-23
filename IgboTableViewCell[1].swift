//
//  IgboTableViewCell.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/24/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit

class IgboTableViewCell: UITableViewCell {

    @IBOutlet weak var selectionLabel: UILabel!
    
    @IBOutlet weak var selectionImage: UIImageView!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
