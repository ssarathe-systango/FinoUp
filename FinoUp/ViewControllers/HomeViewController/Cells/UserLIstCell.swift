//
//  UserLIstCell.swift
//  FinoUp
//
//  Created by macmini01 on 26/08/22.
//

import UIKit

class UserLIstCell: UITableViewCell {
    
    //MARK: OUTLETS
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
