//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Kausthub Poondi on 12/24/16.
//  Copyright © 2016 Kausthub Poondi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipDefault: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults2 = UserDefaults.standard
        tipDefault.selectedSegmentIndex = defaults2.integer(forKey: "tip")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func updateDefault(_ sender: AnyObject) {
        let defaults  = UserDefaults.standard
        defaults.set(tipDefault.selectedSegmentIndex, forKey: "tip")
        defaults.synchronize()
    }
    
}
