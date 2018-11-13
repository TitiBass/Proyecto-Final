//
//  infoClassViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 11/13/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class infoClassViewController: UIViewController {

    @IBOutlet weak var set_building: UILabel!
    @IBOutlet weak var building: UILabel!
    @IBOutlet weak var level_floor: UILabel!
        var offisrtview2: horario!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let salon = String(offisrtview2.salon)
        let index = salon?.index((salon?.startIndex)!, offsetBy: 1)
        salon![index!]
        let build = String((salon?.prefix(upTo: index!))!)
        let level = String((salon?.suffix(from: index!))!)
        let index2: String.Index = (level.index((level.startIndex), offsetBy: 1))
        let level2: String = (level.substring(to: index2))
        
        set_building.text = level
        building.text = build
        level_floor.text = level2
        if level2 == "1"{
            level_floor.text = "Primera Planta"
            
        }else
            if level2 == "2"{
                level_floor.text = "Segunda Planta"
                
            }else  if level2 == "3"{
                level_floor.text = "Tercera Planta"
                
        }
    }
    


}
