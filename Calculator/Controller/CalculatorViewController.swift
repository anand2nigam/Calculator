//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Anand Nigam on 23/09/18.
//  Copyright © 2018 Anand Nigam. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    // Use of computed property to reduce the efforts to display the appropriate value accordingly.
    private var displayValue: Double {
        // this will get the value from the label and change it into the double, everytime it is  needed and return it.
        get {
             guard let number = Double(displayLabel.text!) else { fatalError("Can not convert String to Double")}
            return number
        }
        // This will set the new value to the label everytime it is changed or set to something new.
        set {
            displayLabel.text = String(newValue)
        }
            
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    if !isInt { return }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
        
    }
    
    @IBAction func calculationButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
    

}
