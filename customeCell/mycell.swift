//
//  mycell.swift
//  customeCell
//
//  Created by iFlame on 23/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {
    
    
    @IBOutlet weak var myimage: UIImageView!

    @IBOutlet weak var mylable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
