//
//  ViewController.swift
//  TipMe
//
//  Created by liblabs-mac on 5/7/17.
//  Copyright © 2017 liblabs-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var splitStep: UIStepper!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercText: UITextField!
    
    @IBOutlet weak var billAmountText: UITextField!
    
    @IBOutlet weak var splitSizeText: UITextField!
    @IBAction func calcTip(sender: AnyObject) {
        let bill = Double(billAmountText.text!) ?? 0
        let perc = Double(tipPercText.text!) ?? 0
        let size = Double(splitSizeText.text!) ?? 1
        
        
        let tip = (bill/size) * (perc/100)
        
        let total = (bill/size) + tip
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalAmountLabel.text = String(format: "$%.2f",total)
        
        
    }
}

