//
//  calendarViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 26/10/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class calendarViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: AnyObject)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = ""
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
