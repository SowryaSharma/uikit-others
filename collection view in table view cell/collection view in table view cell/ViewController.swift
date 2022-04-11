//
//  ViewController.swift
//  collection view in table view cell
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var models = [Model]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:collectionTableViewCell.identifier, for: indexPath) as! collectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    @IBOutlet var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(Model(text: "image", imageName: "image"))
        models.append(Model(text: "image", imageName: "image"))
        models.append(Model(text: "image", imageName: "image"))
        models.append(Model(text: "image", imageName: "image"))
        models.append(Model(text: "image", imageName: "image"))
        tableView.register(collectionTableViewCell.nib(), forCellReuseIdentifier: collectionTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }

}

struct Model{
    let text:String
    let imageName:String
    init(text:String, imageName:String){
        self.text=text
        self.imageName=imageName
    }
}
