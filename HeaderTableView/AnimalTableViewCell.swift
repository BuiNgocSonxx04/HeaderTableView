//
//  AnimalTableViewCell.swift
//  SectionTableViewHeader
//
//  Created by son on 7/28/21.
//

import UIKit
import Reusable

final class AnimalTableViewCell: UITableViewCell, NibReusable {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var animal: Animal!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func layoutInfo(name: String, address: String) {
//        self.nameLabel?.text = name
//        self.addressLabel?.text = address
//    }
    
    func fillWithText(text: String?, address: String?) {
        nameLabel.text = text
        addressLabel.text = address
    }
}
