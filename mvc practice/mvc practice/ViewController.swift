//
//  ViewController.swift
//  mvc practice
//
//  Created by Cumulations Technologies on 31/03/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    let y = quotes(from: <#Decoder#>)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = y.content
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        fetch()
    }
    func fetch(){

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
            
                                   
                                  }
                          }
                          task.resume()

           }

}

