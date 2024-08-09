//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/9/24.
//

import UIKit
import ParseCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["Calories"] = 100
        parseObject.saveInBackground { (Success, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else{
                print("uploaded")
                
            }
        }
        
        
    }


}

