//
//  ViewController.swift
//  tableview
//
//  Created by Cumulations Technologies on 15/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var reload = UIRefreshControl()
    var arr:[String]=["Harry","Ross",
                     "Bruce","Cook",
                     "Carolyn","Morgan",
                     "Albert","Walker",
                     "Randy","Reed",
                     "Larry","Barnes",
                     "Lois","Wilson",
                     "Jesse","Campbell",
                     "Ernest","Rogers",
                     "Theresa","Patterson",
                     "Henry","Simmons",
                     "Michelle","Sowrya","Perry",
                     "Frank","Butler",
                     "Shirley"]
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        reload.attributedTitle = NSAttributedString(string: "reloading data")
        reload.addTarget(self, action: #selector(refresh), for: .valueChanged)
        tableView.addSubview(reload)
        
    }
    @objc func refresh(){
        arr.append("new name")
        tableView.reloadData()
        reload.endRefreshing()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arr.count
}
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

