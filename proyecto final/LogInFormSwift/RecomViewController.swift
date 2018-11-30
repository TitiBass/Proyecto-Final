//
//  RecomViewController.swift
//  LogInFormSwift
//
//  Created by macbook on 11/29/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class RecomViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var profe2: UILabel!
    @IBOutlet weak var profe3: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        titleLabel.text = pets[myIndex]
        descLabel.text = petDesc[myIndex]
        profe2.text = profe22[myIndex]
        profe3.text = profe33[myIndex]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
