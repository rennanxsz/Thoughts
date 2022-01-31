//
//  SettingsViewController.swift
//  Thoughts
//
//  Created by Rennan Bruno on 30/01/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var swAutoRefresh: UISwitch!
    @IBOutlet weak var slTimeInterval: UISlider!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    @IBOutlet weak var lbTimeInterval: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func changeAutoRefresh(_ sender: UISwitch) {
    }
    @IBAction func changeTimeInterval(_ sender: UISlider) {
    }
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
    }
    
}
