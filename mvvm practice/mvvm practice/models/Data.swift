//
//  Data.swift
//  mvvm practice
//
//  Created by Cumulations Technologies on 28/03/22.
//

import Foundation

struct Details:Codable{
    let contacts:[Contact]
    
}

struct Contact:Codable{
    var id,name,email:String
    
}



