//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/9/24.
//

import UIKit
import ParseCore

class ViewController: UIViewController {
    
    
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    
        

    }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != ""{
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!){(user, error) in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                } else{
                        // Segue
                print("Welcome")
                    print(user?.username)
               }
                
           }
            
        } else{
            
            makeAlert(titleInput: "Error", messageInput: "username / password")
        }
        
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != ""{
        let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground{(success, error) in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error!")
                }else {
                    // Add a Segue
                    print("OK")
                }
            }
            
            
        } else {
            makeAlert(titleInput: "Error!", messageInput: "Username / Password needed!")
        }
        
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let addButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(addButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}

