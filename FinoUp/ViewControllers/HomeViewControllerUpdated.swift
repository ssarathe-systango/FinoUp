//
//  HomeViewControllerUpdated.swift
//  FinoUp
//
//  Created by macmini01 on 25/08/22.
//

import UIKit

class HomeViewControllerUpdated: UIViewController {
  
    var brandNames: [String] = ["Amazon", "Netflix", "Flipkart", "Croma", "Snapdeal"]
    
    var brandImages: [String] = ["amazon", "netflix", "croma", "flipkart", "snapdeal"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
    }
}

extension HomeViewControllerUpdated {
    func tableViewSetup() {
        tblView.dataSource = self
        tblView.delegate = self
        tblView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
        
        tblView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

//MARK: TABLE VIEW
extension HomeViewControllerUpdated: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return section == 0 ? 1 : brandNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.section == 0 {
            let cellFirst = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell") as! MainTableViewCell
            return cellFirst
        }
            let cellSecond = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
            cellSecond.imgView.image = UIImage(named: brandImages[indexPath.row])
            cellSecond.lblText1.text = brandNames[indexPath.row]
            cellSecond.lblText2.text = "-$63.00"
            return cellSecond
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section != 0 {
            return 60
        } else {
            return 500
        }
    }
}


