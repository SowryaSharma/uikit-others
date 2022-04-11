//
//  HomeViewController.swift
//  autolayout--1
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Log out", style: .done, target: self, action: #selector(LogOut))
        
    }
    @objc func LogOut(){
        print("logging out")
        navigationController?.popViewController(animated: true)
        return
    }


}
