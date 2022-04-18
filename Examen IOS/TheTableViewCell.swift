//
//  TheTableViewCell.swift
//  Examen IOS
//
//  Created by Alexis on 18/04/22.
//

import UIKit

class TheTableViewCell: UITableViewCell {
    @IBOutlet weak var componentLabel: UILabel!
    @IBOutlet weak var btnCheckMark: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
