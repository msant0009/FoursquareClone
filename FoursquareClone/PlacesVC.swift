//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/10/24.
//

import UIKit

class PlacesVC: UIViewController {

    @IBOutlet var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
    }
    
    @objc func addButtonClicked(){
        //Segue to atPlacesVC
        print("add button clicked")
    }
    
    

}
