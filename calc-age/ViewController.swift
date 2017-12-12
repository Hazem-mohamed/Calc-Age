//
//  ViewController.swift
//  calc-age
//
//  Created by Hazem on 11/26/17.
//  Copyright © 2017 Hazem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateSelector: UIDatePicker!
    
    @IBOutlet weak var DisplayAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func BtnGetAge(_ sender: Any) {
        // Get The Current Date From Mobile
        let currentDate = Date()
        let userDOB = dateSelector.date
        let calender = Calendar.current
        let component = calender.dateComponents( [Calendar.Component.day], from:userDOB, to:currentDate)
        
        DisplayAge.text = "Age In Days=\(component.day!)"
    }
}

