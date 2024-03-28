//
//  Book.swift
//  BookStore
//
//  Created by asmaa gamal  on 28/03/2024.
//

import Foundation
struct Book:Identifiable,Equatable{
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs.id == rhs.id
    }
    
    var title:String
    let id = UUID()
    var category:BookCategery
    var author: Author
    var price:Int
    static let example: Book = Book(title: "To Kill a Mockingbird", category: .fiction, author: Author(name: "Harper Lee"), price: 20)

    static let examples: [Book] = [
          Book(title: "The Great Gatsby", category: .fiction, author: Author(name: "F. Scott Fitzgerald"), price: 25),
          Book(title: "1984", category: .fiction, author: Author(name: "George Orwell"), price: 18),
          Book(title: "The Catcher in the Rye", category: .fiction, author: Author(name: "J.D. Salinger"), price: 22),
          Book(title: "Pride and Prejudice", category: .fiction, author: Author(name: "Jane Austen"), price: 19),
          
          Book(title: "Mathematics: From the Birth of Numbers", category: .math, author: Author(name: "Jan Gullberg"), price: 30),
          Book(title: "The Joy of x: A Guided Tour of Math", category: .math, author: Author(name: "Steven Strogatz"), price: 28),
          Book(title: "How Not to Be Wrong: The Power of Mathematical Thinking", category: .math, author: Author(name: "Jordan Ellenberg"), price: 24),
          
          Book(title: "The Magic School Bus Lost in the Solar System", category: .science, author: Author(name: "Joanna Cole"), price: 15),
          Book(title: "Ada Twist, Scientist", category: .science, author: Author(name: "Andrea Beaty"), price: 12),
          Book(title: "The Everything Kids' Science Experiments Book", category: .science, author: Author(name: "Tom Robinson"), price: 18),
          
          Book(title: "The Lemonade War", category: .business, author: Author(name: "Jacqueline Davies"), price: 10),
          Book(title: "The Startup Owner's Manual: The Step-By-Step Guide for Building a Great Company", category: .business, author: Author(name: "Steve Blank"), price: 35),
          Book(title: "Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not!", category: .business, author: Author(name: "Robert T. Kiyosaki"), price: 28)
      ]
}
