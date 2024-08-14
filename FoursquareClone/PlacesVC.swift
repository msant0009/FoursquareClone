//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/10/24.
//

import UIKit
import ParseCore
import MapKit


class PlacesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var placeNameArray = [String]()
    var placeIDArray = [String]()
    var selectedPlaceId = ""
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logoutButtonClicked))
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getDataFromParse()
        
    }
    
    func getDataFromParse(){
        let query = PFQuery(className: "Places")
        
   //     query.findObjectsInBackground { (objects, error) in
        query.findObjectsInBackground {(objects, error) in
            if error != nil{
//                self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription??, "Error")
            } else {
                if objects != nil{
                    self.placeIDArray.removeAll(keepingCapacity: false)
                    self.placeNameArray.removeAll(keepingCapacity: false)
                    
                    for object in objects! {
                        if let placeName = object.object(forKey: "name") as? String {
                            if let placeID = object.objectId {
                                self.placeNameArray.append(placeName)
                                self.placeIDArray.append(placeID)
                            }
                        }
                    }
                    
                    self.tableView.reloadData()
                }
            }
   
    }
        
    }
    
    @objc func addButtonClicked(){
        //Segue to atPlacesVC
        self.performSegue(withIdentifier: "toAddPlaceVC", sender: nil)
    }
    
    @objc func logoutButtonClicked() {
        PFUser.logOutInBackground { (error) in
            if error != nil {
      //          self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription??, "Error")
            } else {
                self.performSegue(withIdentifier: "toSignUpVC", sender: nil)
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.chosenPlaceId = selectedPlaceId
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlaceId = placeIDArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = placeNameArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNameArray.count
    }

    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        self.present(alert, animated: true, completion: nil)
        
    }
        
        
        
    
    
    
}
