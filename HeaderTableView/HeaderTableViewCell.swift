//
//  HeaderTableViewCell.swift
//  SectionTableViewHeader
//
//  Created by son on 7/28/21.
//

import UIKit
import Reusable

class HeaderTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configView(title: String) {
        self.frame = self.bounds
        lblName?.text = title
    }
}
