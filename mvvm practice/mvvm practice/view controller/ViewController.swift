//
//  ViewController.swift
//  mvvm practice
//
//  Created by Cumulations Technologies on 28/03/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let parse = parser()
    var contacts = [Contact]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        parse.fetch{
            data in
            self.contacts = data
            print("***",data)
            DispatchQueue.main.async {
                self.tableView.reloadData()
                print("data reload")
            }
        }
        print("data fetched")

        print("************************",contacts)
        tableView.dataSource=self
        tableView.delegate=self
        
        
    }


}

