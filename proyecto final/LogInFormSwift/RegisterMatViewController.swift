//
//  RegisterMatViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 26/10/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class RegisterMatViewController: UIViewController {

    @IBOutlet weak var matField: UITextField!
    @IBOutlet weak var horField: UITextField!
    @IBOutlet weak var proField: UITextField!
    @IBOutlet weak var salField: UITextField!
    @IBOutlet weak var Complete: UILabel!
    
    let defaults = UserDefaults.standard
    var newmateria = [String]()
    var newhora = [String]()
    var newprofesor = [String]()
    var newsalon = [String]()
    var newmatHor = [horario]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Complete.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegisterMat(_ sender: Any) {
        //por si no tiene ningun campo lleno
        if (matField.text == "") && (horField.text == ""){
            let alert = UIAlertController(title: "Oops", message: "All fields must not be left blanck when proceeding!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true,completion: nil)
            return
       
        }
        if (matField.text != "") && (horField.text != ""){
            let newmat = matField.text
            let newpro = proField.text
            let newhor = horField.text
            let newsal = salField.text
            
            newmatHor.append(horario(materia: newmat!, profesor: newpro!, horario: newhor!, salon: newsal!))
            
            print(newmatHor)
        }
        else{
            //por si tiene todos loscampos llenos
            if( (matField.text == "") && (horField.text == "")){
                Complete.alpha = 1
            }
            
            
        }

    }
    
}


/* esto es para registrar materias
 if (matField.text == "") && (horField.text == ""){
 let alert = UIAlertController(title: "Oops", message: "All fields must not be left blanck when proceeding!", preferredStyle: .alert)
 alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
 present(alert, animated: true,completion: nil)
 return
 }
 
 if (defaults.object(forKey: "horario") != nil) && (matField.text != "") && (horField.text != ""){
 Complete.alpha = 0
 newmateria = defaults.array(forKey: "materia") as! [String]
 newhora = defaults.array(forKey: "hora") as! [String]
 }
 else{
 if( (matField.text == "") && (horField.text == "")){
 Complete.alpha = 1
 }}
 newmateria.insert(matField.text!, at: newmateria.count)
 newhora.insert(horField.text!, at: newhora.count)
 defaults.set(newmateria, forKey: "materia")
 defaults.set(newhora, forKey: "hora")
 dismiss(animated: true, completion: nil)
 print(newmateria)
 */
//newmatHor.append(horario(materia: newmateria, profesor: newprofesor, horario: newhora, salon: newsalon))

