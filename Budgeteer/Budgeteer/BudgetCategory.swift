//
//  BudgetCategory.swift
//  Budgeteer
//
//  Created by morse on 2/21/21.
//

import UIKit

struct BudgetCategory: Hashable {
    var name: String
    let identifier: String = UUID().uuidString
    var amount: Double = 100
    var frequency: BudgetFrequency = .monthly
    var spent: Double = 0
    var remaining: Double = 100
    var color: UIColor = ColorProvider.next()
    
//    mutating func setUp(frequency: BudgetFrequency, amount: Double) {
//        self.amount = amount
//        self.frequency = frequency
//    }
}

enum DayOfTheWeek: Hashable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum BudgetFrequency: Hashable {
    case weekly(dayOfTheWeek: DayOfTheWeek)
    case monthly
    case quarterly
    case yearly
}

class ColorProvider {
    static let choices = [UIColor.blue, UIColor.red, UIColor.cyan, UIColor.green, UIColor.purple]
    private static var index: Int = 0
    
    static func next() -> UIColor {
        let color = choices[index]
        if index == choices.count - 1 {
            index = 0
        } else {
            index += 1
        }
        return color
    }
}
