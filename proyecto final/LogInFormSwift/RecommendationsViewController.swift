//
//  RecommendationsViewController.swift
//  LogInFormSwift
//
//  Created by macbook on 11/29/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit


class RecommendationsViewController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleLabel.text = pets[myIndex]
        descLabel.text = petDesc[myIndex]
        
    }
    


}
