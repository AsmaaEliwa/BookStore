//
//  Expense.swift
//  BookStore
//
//  Created by asmaa gamal  on 28/03/2024.
//

import Foundation
struct Expense:Identifiable{
    let amount:Int
    let expenseDate:Date
    var category:ExpenseCategory
    var id:UUID
    enum ExpenseCategory{
        case fixed
        case variable
        var displayName:String{
            switch self{
            case .fixed:
               return "fixed"
            case .variable:
               return "variable"
            }
        }
    }
    static let example: Expense = Expense(amount: 100, expenseDate: Date(), category: .fixed, id: UUID())
      
      static func generateExpensesForLastThreeMonths() -> [Expense] {
          var expenses: [Expense] = []
          
          // Get the current date
          let currentDate = Date()
          
          // Calculate the start date as three months ago from the current date
          guard let threeMonthsAgo = Calendar.current.date(byAdding: .month, value: -3, to: currentDate) else {
              return expenses
          }
          
          // Generate expenses for each day within the last three months
          var date = threeMonthsAgo
          while date <= currentDate {
              // Generate a random amount for each expense
              let randomAmount = Int.random(in: 10...100)
              
              // Generate a random category for each expense
              let randomCategory: ExpenseCategory = Bool.random() ? .fixed : .variable
              
              // Generate a random date for each expense
              let randomExpenseDate = Date.randomDate(from: date, to: date.addingTimeInterval(86400)) // Random date for the expense within the day
              
              // Create the expense and append it to the array
              let expense = Expense(amount: randomAmount, expenseDate: randomExpenseDate, category: randomCategory, id: UUID())
              expenses.append(expense)
              
              // Move to the next day
              date = Calendar.current.date(byAdding: .day, value: 1, to: date)!
          }
          
          return expenses
      }
  }

