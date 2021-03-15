//
//  ButdgetCategoryCell.swift
//  Budgeteer
//
//  Created by morse on 3/6/21.
//

import UIKit

class BudgetCategoryCell: UITableViewCell {
    
    var category: BudgetCategory?
    
    func updateViews() {
        guard let category = category else { return }
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
