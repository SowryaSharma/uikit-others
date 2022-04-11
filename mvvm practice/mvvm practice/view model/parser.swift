//
//  parser.swift
//  mvvm practice
//
//  Created by Cumulations Technologies on 28/03/22.
//

import Foundation


class parser{
    
    func fetch( comp : @escaping ([Contact])->()){

    let url = URL(string: "https://api.androidhive.info/contacts/")
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
                        let q:Details = try! JSONDecoder().decode(Details.self, from: data)
                        print(q)
                        comp(q.contacts)
                        
                           }
                   }
                   task.resume()
        }
}
