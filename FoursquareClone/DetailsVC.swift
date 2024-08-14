//
//  DetailsVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/12/24.
//

import UIKit
import MapKit
import ParseCore

class DetailsVC: UIViewController {

    @IBOutlet var detailsImageView: UIImageView!
    
    @IBOutlet var detailsNameLabel: UILabel!
    
    @IBOutlet var detailsTypeLabel: UILabel!
    
    @IBOutlet var detailsAtmosphereLabel: UILabel!
 
    @IBOutlet var detailsMapView: MKMapView!
    
    var chosenPlaceId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let query = PFQuery(className: "Places")
        query.whereKey("objectId", equalTo: chosenPlaceId)
        query.findObjectsInBackground {(objects, error) in
            if error != nil{
                
            } else{
                print(objects)
                
            }
            
            
        }
    }
    

    

}
