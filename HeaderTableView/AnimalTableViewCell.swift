//
//  AnimalTableViewCell.swift
//  SectionTableViewHeader
//
//  Created by son on 7/28/21.
//

import UIKit

final class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    var animal: Animal! {
        didSet {
            self.nameLabel.text = self.animal.name
            self.addressLabel.text = self.animal.address
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
