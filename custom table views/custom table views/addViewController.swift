//
//  addViewController.swift
//  custom table views
//
//  Created by Cumulations Technologies on 25/02/22.
//

import UIKit

class addViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var field: UITextField!    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Save", style: .done, target: self, action: #selector(saveTask))

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view appeared")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }
    @objc func saveTask(){
        guard let text = field.text, !text.isEmpty else{
            return
        }
        print(text)
        UserDefaults().set(text,forKey:"name")
        print(UserDefaults.standard.string(forKey: "name")!)
        navigationController?.popViewController(animated: true)
    }

}
