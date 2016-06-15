//
//  ViewController.swift
//  Just the Tip
//
//  Created by Jessica Choi on 6/14/16.
//  Copyright © 2016 Jessica Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    
    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

    @IBAction func CalculateTip(sender: AnyObject) {
        
        let TipPercentages = [0.15, 0.18, 0.21]
        
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * TipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
        
    }


}

