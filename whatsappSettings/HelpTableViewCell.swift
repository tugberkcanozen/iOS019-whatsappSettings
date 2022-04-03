//
//  HelpTableViewCell.swift
//  whatsappSettings
//
//  Created by Tuğberk Can Özen on 3.04.2022.
//

import UIKit

class HelpTableViewCell: UITableViewCell {

    @IBOutlet weak var helpTextLabel: UILabel!
    @IBOutlet weak var helpImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
