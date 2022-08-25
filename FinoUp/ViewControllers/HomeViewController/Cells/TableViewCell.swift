//
//  TableViewCell.swift
//  FinoUp
//
//  Created by macmini01 on 24/08/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblText1: UILabel!
    @IBOutlet weak var lblText2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
