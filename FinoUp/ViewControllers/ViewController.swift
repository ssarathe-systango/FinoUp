//
//  ViewController.swift
//  Finance App
//
//  Created by macmini01 on 22/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: ACTION
    @IBAction func getStartedBtn(_ sender: Any) {
        navigationController()
    }
}

// MARK: NAVIGATION CONTROLLER
extension ViewController {
    func navigationController() {
        let move = storyboard?.instantiateViewController(withIdentifier: "HomeViewControllerUpdated") as! HomeViewControllerUpdated
        navigationController?.pushViewController(move, animated: true)
    }
}
