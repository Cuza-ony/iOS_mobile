//
//  myTableViewCell.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/24/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var theText: UILabel!
    @IBOutlet weak var theImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
