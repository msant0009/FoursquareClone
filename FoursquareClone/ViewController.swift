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
        
        //        let parseObject = PFObject(className: "Fruits")
        //        parseObject["name"] = "Banana"
        //
        //        parseObject["Calories"] = 150
        //        parseObject.saveInBackground { (Success, error) in
        //            if error != nil {
        //                print(error?.localizedDescription)
        //            } else{
        //                print("uploaded")
        //
        //            }
        //        }
        //
        //
        
        let query = PFQuery(className: "Fruits")
     //   query.whereKey("name", equalTo: "Apple")
     //   query.whereKey("calories", greaterThan: 120)
        query.findObjectsInBackground { (objects, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else{
                print(objects)
            
            }
        }
        

        
        
        
        
    }
}

