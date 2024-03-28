//
//  Author.swift
//  BookStore
//
//  Created by asmaa gamal  on 28/03/2024.
//

import Foundation
struct Author:Identifiable{
    var name:String
    var id =  UUID()
    
    static let example: Author = Author(name: "J.K. Rowling")
    
    static let examples: [Author] = [
        Author(name: "Stephen King"),
        Author(name: "J.R.R. Tolkien"),
        Author(name: "Agatha Christie"),
        Author(name: "Harper Lee"),
        Author(name: "Ernest Hemingway")
    ]
}
