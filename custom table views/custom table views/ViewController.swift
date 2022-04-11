//
//  ViewController.swift
//  custom table views
//
//  Created by Cumulations Technologies on 25/02/22.
//

import UIKit
struct Section {
    let letter : String
    let names : [String]
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var arr:[String]=[]
    var sections = [Section]()
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
//        arr.append(UserDefaults.standard.string(forKey: "name") ?? "")
        let newName = UserDefaults.standard.string(forKey: "name") ?? ""
        if !arr.contains(newName.lowercased()){
            arr.append(newName.lowercased())
        }
        let groupedDictionary = Dictionary(grouping: arr, by: {String($0.prefix(1))})
            let keys = groupedDictionary.keys.sorted()

            sections = keys.map{ Section(letter: $0, names: groupedDictionary[$0]!.sorted()) }
            self.tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //struct at section position in sections array
        let section = sections[indexPath.section]
        //name at row index in struct at section position of sections
        let username = section.names[indexPath.row]
        cell.textLabel?.text = username
        return cell
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].names.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }


    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].letter
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let newView = storyboard?.instantiateViewController(identifier: "addViewController") as! addViewController
        newView.title = "Add Contact"
        navigationController?.pushViewController(newView, animated: true)
    }
    
}
