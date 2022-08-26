//
//  HomeViewControllerUpdated.swift
//  FinoUp
//
//  Created by macmini01 on 25/08/22.
//

import UIKit

class HomeViewControllerUpdated: UIViewController {
    
    //MARK: ARRAYS
    var brandNames: [String] = ["Amazon", "Netflix", "Flipkart", "Croma", "Snapdeal"]
    
    var brandImages: [String] = ["amazon", "netflix", "croma", "flipkart", "snapdeal"]
    
    //MARK: OUTLETS
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
    }
}

//MARK: TABLE VIEW SETUP
extension HomeViewControllerUpdated {
    func tableViewSetup() {
        tblView.dataSource = self
        tblView.delegate = self
        
        tblView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
        
        tblView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        tblView.register(UINib(nibName: "UserLIstCell", bundle: nil), forCellReuseIdentifier: "UserLIstCell")
    }
}

//MARK: TABLE VIEW METHODS
extension HomeViewControllerUpdated: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return section == 0 ? 1 : brandNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.section == 0 {
            let cellFirst = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell") as! MainTableViewCell
            return cellFirst
            
        } else if indexPath.section == 1 {
            
            let cellSecond = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
            cellSecond.imgView.image = UIImage(named: brandImages[indexPath.row])
            cellSecond.lblText1.text = brandNames[indexPath.row]
            cellSecond.lblText2.text = "-$63.00"
            return cellSecond
        }
        
        let cellThird = tableView.dequeueReusableCell(withIdentifier: "UserLIstCell") as! UserLIstCell
        cellThird.imgView.image = UIImage(named: "userProfile")
        return cellThird
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Main Table View Cell Header"
        } else if section == 1 {
            return "Table View Cell Header"
        } else {
            return "User List Cell Header"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section != 0 {
            return 60
        } else {
            return 500
        }
    }
}


