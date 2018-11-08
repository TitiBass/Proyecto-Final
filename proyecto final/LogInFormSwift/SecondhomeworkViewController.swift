//
//  SecondhomeworkViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 11/8/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class SecondhomeworkViewController: UIViewController {

    @IBOutlet weak var inputhomework: UITextField!
    
    @IBAction func Addhomework(_ sender: Any) {
        if(inputhomework.text != ""){
            listhomework.append(inputhomework.text!)
            inputhomework.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
