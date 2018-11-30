//
//  RegisterViewController.swift
//  LogInFormSwift
//
//  Created by macbook on 19/10/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var newUsernameField: UITextField!
    @IBOutlet weak var newPswField: UITextField!
    @IBOutlet weak var repeatnewPswField: UITextField!
    @IBOutlet weak var dontmatch: UILabel!
    @IBOutlet weak var dontfield: UILabel!
    
    let defaults = UserDefaults.standard
    var newmateria = [horario]()
    var registeredUsers = [String]()
    var passwordArr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        dontmatch.alpha = 0
        dontfield.alpha = 0
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        if (newUsernameField.text == "") && (newPswField.text == ""){
            let alert = UIAlertController(title: "Lo sentimos", message: "Tienes que llegar todos los datos requeridos para poder continuar", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true,completion: nil)
            return
            
            
        }
        
        if (defaults.object(forKey: "usernames") != nil) && (newPswField.text! == repeatnewPswField.text!  ) && (newUsernameField.text != "") && (newPswField.text != ""){
            dontmatch.alpha = 0
            dontfield.alpha = 0
        }
        else{
            if (newPswField.text! != repeatnewPswField.text!  ) {
                dontmatch.alpha = 1
            }
            if( (newUsernameField.text == "") && (newPswField.text == "")){
                dontfield.alpha = 1
            }
            
        }
        registeredUsers.insert(newUsernameField.text!, at: registeredUsers.count)
        passwordArr.insert(newPswField.text!, at: passwordArr.count)
        defaults.set(registeredUsers, forKey: "usernames")
        defaults.set(passwordArr, forKey: "passwords")
        dismiss(animated: true, completion: nil)
        }

    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
       
    }
  
}
/*
 codigo para registrar materias
 
 if (newUsernameField.text == "") && (newPswField.text == ""){
 let alert = UIAlertController(title: "Oops", message: "All fields must not be left blanck when proceeding!", preferredStyle: .alert)
 alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
 present(alert, animated: true,completion: nil)
 return
 
 
 }
 
 if (defaults.object(forKey: "usernames") != nil) && (newPswField.text! == repeatnewPswField.text!  ) && (newUsernameField.text != "") && (newPswField.text != ""){
 dontmatch.alpha = 0
 dontfield.alpha = 0
 registeredUsers = defaults.array(forKey: "usernames") as! [String]
 passwordArr = defaults.array(forKey: "passwords") as! [String]
 }
 else{
 if (newPswField.text! != repeatnewPswField.text!  ) {
 dontmatch.alpha = 1
 }
 if( (newUsernameField.text == "") && (newPswField.text == "")){
 dontfield.alpha = 1
 }}
 registeredUsers.insert(newUsernameField.text!, at: registeredUsers.count)
 passwordArr.insert(newPswField.text!, at: passwordArr.count)
 defaults.set(registeredUsers, forKey: "usernames")
 defaults.set(passwordArr, forKey: "passwords")
 dismiss(animated: true, completion: nil)
 */
