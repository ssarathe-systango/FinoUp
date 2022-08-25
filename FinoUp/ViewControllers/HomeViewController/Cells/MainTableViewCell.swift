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
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewSetup()
        initialSetup()
    }
    
    //MARK: FLOW LAYOUT SETUP
    private func initialSetup() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = flowLayout
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension MainTableViewCell {
    func collectionViewSetup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCellUpdated", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellUpdated")
    }
}

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
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 10.0
        cell.layer.cornerRadius = 25
        cell.layer.masksToBounds = false
        return cell
    }
}

extension MainTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 380, height: 650)
    }
}
