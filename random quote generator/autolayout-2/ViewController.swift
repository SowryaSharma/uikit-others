//
//  ViewController.swift
//  autolayout-2
//
//  Created by Cumulations Technologies on 14/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.lineBreakMode = .byWordWrapping
        cell.textLabel?.text="""
\(quote)

   -\(author)
"""
        
        return cell
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    struct quotes:Codable{
        var content:String
        var author:String
    }
    var quote="I do not believe in a fate that falls on men however they act; but I do believe in a fate that falls on man unless they act."
    var author = "G.K. Chesterton"
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
        
        tableView.rowHeight = UITableView.automaticDimension
           tableView.estimatedRowHeight = 300
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let url = URL(string: "https://api.quotable.io/random")
               var request = URLRequest(url: url!)
               request.httpMethod = "GET"
               let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                   if let error = error {
                       print("Error took place \(error)")
                       return
                   }
                   if let response = response as? HTTPURLResponse {
                       print("Response HTTP Status code: \(response.statusCode)")}
                   if let data = data{
                    let q:quotes = try! JSONDecoder().decode(quotes.self, from: data)
                    self.quote=q.content
                    self.author = q.author
                    DispatchQueue.main.async { self.tableView.reloadData() }
 
                        
                       }
               }
               task.resume()
    }
    
}

