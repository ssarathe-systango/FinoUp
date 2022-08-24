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
    
    @IBAction func getStartedBtn(_ sender: Any) {
        navigationController()
    }
}

extension ViewController {
    func navigationController() {
        let move = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        navigationController?.pushViewController(move, animated: true)
    }
}
