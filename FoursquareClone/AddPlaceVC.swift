//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/10/24.
//

import UIKit

class AddPlaceVC: UIViewController {

    @IBOutlet var placeNameText: UITextField!
   
    @IBOutlet var placeTypeText: UITextField!
    
    @IBOutlet var placeAtmosphereText: UITextField!
    
  
    @IBOutlet var placeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func nextButtonClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toMapVC", sender: nil)
        
    }
    
}
