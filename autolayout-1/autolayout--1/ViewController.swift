//
//  ViewController.swift
//  autolayout--1
//
//  Created by Cumulations Technologies on 14/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonpressed: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func button(_sender:UIButton){
        let e = email.text!
        let passw = password.text!
        print(e,passw)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Log in"
        print("view did load")
    }

}
