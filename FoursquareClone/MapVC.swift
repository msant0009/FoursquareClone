//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/12/24.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
       
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked))
        


    }
    
    @objc func saveButtonClicked(){
        print("save clicked")
    }
    
    @objc func backButtonClicked(){
        print("back clicked")
        self.dismiss(animated: true, completion: nil)
    }
    

}
