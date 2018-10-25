//
//  ViewController.swift
//  LogInFormSwift
//
//  Created by Eng Tian Xi on 04/09/2016.
//  Copyright © 2016 Eng Tian Xi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    let defaults = UserDefaults.standard
    var registeredUsers = [String]()
    var passwordArr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black
        usernameField.delegate = self
        passwordField.delegate = self
    }

    @IBAction func proceedButtonTapped(_ sender: AnyObject) {
        if defaults.object(forKey: "usernames") != nil{
            registeredUsers = defaults.object(forKey: "usernames") as! [String]
            passwordArr = defaults.object(forKey: "passwords") as! [String]
            for x in 0...(registeredUsers.count - 1) {
                if (usernameField.text! == registeredUsers[x]) && (passwordField.text! == passwordArr[x]) {
                    performSegue(withIdentifier: "loggedInd", sender: self)
                    break
                }
            }
            resetField()
            let incorrectAlert = UIAlertController(title: "oops", message: "Your username and password does not match our records!", preferredStyle: .alert)
            incorrectAlert.addAction(UIAlertAction(title: "ok", style: .default
                , handler: nil))
            self.present(incorrectAlert, animated: true, completion: nil)
            
        } else {
            let noOneHasRegisteredAlert = UIAlertController(title: "oops", message: "it seems like ther is no registered account in the system", preferredStyle: .alert)
            noOneHasRegisteredAlert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(noOneHasRegisteredAlert, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: AnyObject) {
        resetField()
    }
    
    func resetField () {
        usernameField.text = ""
        passwordField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        return true
    }
    
 
  
    

}

