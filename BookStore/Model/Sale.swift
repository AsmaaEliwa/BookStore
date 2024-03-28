//
//  Sale.swift
//  BookStore
//
//  Created by asmaa gamal  on 28/03/2024.
//

import Foundation
struct Sale:Identifiable{
    let id:UUID
    let book:Book
    let quantity : Int
    let saleDate: Date
    static var example: Sale = Sale(id: UUID(), book: Book.examples[0], quantity: 1, saleDate: Date())
    static var examples: [Sale] = [
         Sale(id: UUID(), book: Book.examples[1], quantity: 2, saleDate: Date()),
         Sale(id: UUID(), book: Book.examples[2], quantity: 3, saleDate: Date()),
         Sale(id: UUID(), book: Book.examples[3], quantity: 1, saleDate: Date()),
         Sale(id: UUID(), book: Book.examples[4], quantity: 2, saleDate: Date()),
         Sale(id: UUID(), book: Book.examples[5], quantity: 1, saleDate: Date()),
         Sale(id: UUID(), book: Book.examples[6], quantity: 3, saleDate: Date())
     ]
}
extension Date {
    static func randomDate(from startDate: Date, to endDate: Date) -> Date {
        let interval = endDate.timeIntervalSince(startDate)
        let randomInterval = TimeInterval(arc4random_uniform(UInt32(interval)))
        return startDate.addingTimeInterval(randomInterval)
    }
}
func generateSalesForLastThreeMonths() -> [Sale] {
    var sales: [Sale] = []
    
    // Get the current date
    let currentDate = Date()
    
    // Calculate the start date as three months ago from the current date
    let threeMonthsAgo = Calendar.current.date(byAdding: .month, value: -3, to: currentDate)!
    
    // Generate sales for each day within the last three months
    var date = threeMonthsAgo
    while date <= currentDate {
        // Generate a random sale for each day
        let randomBookIndex = Int(arc4random_uniform(UInt32(Book.examples.count)))
        let randomBook = Book.examples[randomBookIndex]
        let randomQuantity = Int(arc4random_uniform(5)) + 1 // Random quantity between 1 and 5
        let randomSaleDate = Date.randomDate(from: date, to: date.addingTimeInterval(86400)) // Random date for the sale within the day
        
        // Create the sale and append it to the array
        let sale = Sale(id: UUID(), book: randomBook, quantity: randomQuantity, saleDate: randomSaleDate)
        sales.append(sale)
        
        // Move to the next day
        date = Calendar.current.date(byAdding: .day, value: 1, to: date)!
    }
    
    return sales
}
