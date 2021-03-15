//
//  CategoryController.swift
//  Budgeteer
//
//  Created by morse on 2/21/21.
//

import Foundation

enum Categories {
    case housing
    case groceries
    case medical
    case transportation
}

class CategoryController {
    let housing: BudgetCategory = BudgetCategory(
        name: "Housing",
        amount: 2250,
        frequency: .monthly,
        spent: 0,
        remaining: 2250,
        color: ColorProvider.next())
    let groceries: BudgetCategory = BudgetCategory(
        name: "Groceries",
        amount: 750,
        frequency: .monthly,
        spent: 0,
        remaining: 750,
        color: ColorProvider.next())
    let medical: BudgetCategory = BudgetCategory(
        name: "Medical",
        amount: 750,
        frequency: .monthly,
        spent: 0,
        remaining: 750,
        color: ColorProvider.next())
    let transportation: BudgetCategory = BudgetCategory(
        name: "Transportation",
        amount: 500,
        frequency: .monthly,
        spent: 0,
        remaining: 500,
        color: ColorProvider.next())
    let utilities: BudgetCategory = BudgetCategory(
        name: "Utilities",
        amount: 275,
        frequency: .monthly,
        spent: 0,
        remaining: 275,
        color: ColorProvider.next())
    let misc: BudgetCategory = BudgetCategory(
        name: "Misc",
        amount: 475,
        frequency: .monthly,
        spent: 0,
        remaining: 475,
        color: ColorProvider.next())
    
    var categories: [BudgetCategory]
    
    init() {
        print(Categories.groceries)
        
        self.categories = []//self.housing, self.groceries, self.medical, self.transportation, self.utilities, self.misc]
    }
    
    func addExpense(for category: BudgetCategory, amount: Double) {
        guard let index = categories.firstIndex(of: category) else { return }
        var localCategory = categories[index]
        
        localCategory.spent += amount
        localCategory.remaining = localCategory.amount - localCategory.spent
        categories[index] = localCategory
        print(categories[index].remaining)
    }
    
    func createCategory(called name: String, amount: Double) {
        let newCategory = BudgetCategory(name: name, amount: amount)
        categories.append(newCategory)
    }
}
