//
//  ViewController.swift
//  Tippy
//
//  Created by Kausthub Poondi on 12/22/16.
//  Copyright © 2016 Kausthub Poondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
   
    @IBAction func calculateTip(_ sender: AnyObject) {
    
        let tipPercent = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f", tip)
    }
    
    override func viewWillAppear(_ _animated: Bool) {
        super.viewWillAppear(_animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        tipControl.selectedSegmentIndex =  defaults.integer(forKey: "tip")
        
    }
    
    override func viewDidAppear(_ _animated: Bool) {
        super.viewDidAppear(_animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ _animated: Bool) {
        super.viewWillDisappear(_animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ _animated: Bool) {
        super.viewDidDisappear(_animated)
        print("view did disappear")
    }

}

