//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/10/24.
//

import UIKit
import ParseCore

class PlacesVC: UIViewController {

    @IBOutlet var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logoutButtonClicked))
        
    }
    
    @objc func addButtonClicked(){
        //Segue to atPlacesVC
        print("add button clicked")
    }
    
    @objc func logoutButtonClicked(){
        PFUser.logOutInBackground { (error) in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                self.present(alert, animated: true, completion: nil)
                
            } else {
                self.performSegue(withIdentifier: "toSignUpVC", sender: nil)
            }
        }
        
    }

}
