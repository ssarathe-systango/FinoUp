//
//  MainTableViewCell.swift
//  FinoUp
//
//  Created by macmini01 on 25/08/22.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    //MARK: ARRAYS
    var colorArray = [UIColor(hexString: "B6FFCE"), UIColor(hexString: "8971D0"), UIColor(hexString: "F7DBF0"), UIColor(hexString: "BFFFF0"), UIColor(hexString: "C7D36F"), UIColor(hexString: "E78EA9")]
    
    static let identifier = "MainTableViewCell"
    
    //MARK: OUTLETS
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewSetup()
        collectionView.layer.shadowColor = UIColor.black.cgColor
        collectionView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        collectionView.layer.shadowRadius = 10.5
        collectionView.layer.shadowOpacity = 10.0
        collectionView.layer.cornerRadius = 25
        collectionView.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

//MARK: COLLECTION VIEW SETUP
extension MainTableViewCell {
    func collectionViewSetup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCellUpdated", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellUpdated")
    }
}

//MARK: COLLECTION VIEW METHODS
extension MainTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellUpdated", for: indexPath) as! CollectionViewCellUpdated
        cell.backgroundColor = colorArray[indexPath.row]
        cell.cityBankLogo.image = UIImage(named: "cityBankLogo")
        cell.imgImageView.backgroundColor = colorArray[indexPath.row]
        cell.lblPrice.text = "$45.567"
        cell.lblNumber.text = "0345"
        cell.lblNumber.textColor = UIColor.lightGray
        return cell
    }
}

//MARK: COLLECTION VIEW FLOW LAYOUT
extension MainTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 380, height: 650)
    }
}
