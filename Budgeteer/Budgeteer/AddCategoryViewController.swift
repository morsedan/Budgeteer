//
//  AddCategoryViewController.swift
//  Budgeteer
//
//  Created by morse on 2/23/21.
//

import UIKit

class AddCategoryViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var frequencySegmentedControl: UISegmentedControl!
    
    var categoryController: CategoryController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        addCategory()
    }
    
    private func addCategory() {
        if let name = nameTextField.text,
            let amountString = amountTextField.text,
            let amount = Double(amountString),
            let categoryController = categoryController {
            categoryController.createCategory(
                called: name,
                amount: amount
            )
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func dismissTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
