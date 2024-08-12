//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/10/24.
//

import UIKit
import PhotosUI

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var placeNameText: UITextField!
   
    @IBOutlet var placeTypeText: UITextField!
    
    @IBOutlet var placeAtmosphereText: UITextField!
    
    @IBOutlet var placeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeImageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        placeImageView.addGestureRecognizer(gestureRecognizer)
        
        
    }
    

    
    @IBAction func nextButtonClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toMapVC", sender: nil)
        
    }

    @objc func chooseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
      }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImageView.image = info[.originalImage] as? UIImage
      self.dismiss(animated: true, completion: nil)
    }

}
    

