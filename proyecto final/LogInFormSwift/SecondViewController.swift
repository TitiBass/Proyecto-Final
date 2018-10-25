//
//  SecondViewController.swift
//  LogInFormSwift
//
//  Created by Eng Tian Xi on 04/09/2016.
//  Copyright © 2016 Eng Tian Xi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    func deleteAccount(){
        var array = ["1","2","3"]
        array.remove(at: 0)
    }
}
