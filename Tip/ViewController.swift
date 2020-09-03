//
//  ViewController.swift
//  Tip
//
//  Created by abhishek tanwer on 9/2/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var TipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill=Double(billAmountTF.text!) ?? 0
        let tipPercentages=[0.15,0.18,0.2]
        
        let tip=bill*tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total=bill+tip
        
        TipPercentageLabel.text=String(format:"$%.2f",tip)
        TotalLabel.text=String(format:"$%.2f",total)
        
    }
}

