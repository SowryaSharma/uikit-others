//
//  ViewController.swift
//  viewconrollerPractice
//
//  Created by Cumulations Technologies on 16/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "view 1"
        print("view 1 DidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view 1 will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view 1 appeared")
    }
    override func didReceiveMemoryWarning() {
        print("view 1 received memory warning")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view 1 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view 1  disappeared")
    }
    @IBAction func didTapAdd(_ sender: Any) {
//        let story = UIStoryboard(name: "Main", bundle: nil)
//        let controller = story.instantiateViewController(identifier: "view2") as! ViewController2
//        self.present(controller, animated: true, completion: nil)
//        print("button pressed")
//        controller.title = "view 2"
        let vc = storyboard?.instantiateViewController(identifier: "view2") as! ViewController2
        vc.title = "view 2"
        navigationController?.pushViewController(vc, animated: true)
            }
            
        }


