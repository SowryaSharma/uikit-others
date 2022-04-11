//
//  ViewController2.swift
//  viewconrollerPractice
//
//  Created by Cumulations Technologies on 16/02/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var backButton: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("view 2 loaded")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Save", style: .done, target: self, action: #selector(saveTask))
        
    }
    @objc func saveTask(){
        navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view 2 will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view 2 appeared")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view 2 will disappear")
    }
   override func viewDidDisappear(_ animated: Bool) {
        print("view 2  disappeared")
    }
    
    



}
