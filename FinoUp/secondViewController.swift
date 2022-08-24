//
//  secondViewController.swift
//  Finance App
//
//  Created by macmini01 on 23/08/22.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var color = ["yellow", "green", "black", "blue", "pink"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSetup()
    }
}

extension secondViewController {
    func collectionViewSetup() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension secondViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor.green
        cell.imageView.image = UIImage(named: "cityBank")
        cell.lblFirst.text = "$45.567"
        cell.lblSecond.text = "0345"
        cell.lblSecond.textColor = UIColor.lightGray
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        cell.layer.shadowRadius = 1.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.cornerRadius = 25
//      cell.layer.masksToBounds = false
        return cell
    }
}

extension secondViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 290, height: 450)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
