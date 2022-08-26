//
//  CollectionViewCellUpdated.swift
//  FinoUp
//
//  Created by macmini01 on 25/08/22.
//

import UIKit

class CollectionViewCellUpdated: UICollectionViewCell {

    @IBOutlet weak var cityBankLogo: UIImageView!
    @IBOutlet weak var imgImageView: UIImageView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: -3)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.5
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = false
    }
}
