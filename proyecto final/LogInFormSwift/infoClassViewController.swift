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
    @IBOutlet weak var MapBuild: UIImageView!
    @IBOutlet weak var classrom: UILabel!
    
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
        classrom.text = offisrtview2.salon
        
        if build == "a" || build == "A" || build == "b" || build == "B" || build == "c" || build == "C" || build == "d" || build == "D" || build == "e" || build == "E" || build == "f" || build == "F" {
            set_building.text = "Principal"
            
            if build == "a" || build == "A"{
                MapBuild.image = UIImage(named: "A")
            }else if build == "b" || build == "B"{
                MapBuild.image = UIImage(named: "B")
            }else if build == "c" || build == "C"{
                MapBuild.image = UIImage(named: "A")
            }else if build == "d" || build == "D"{
                MapBuild.image = UIImage(named: "A")
            }else if build == "e" || build == "E"{
                MapBuild.image = UIImage(named: "A")
            }else if build == "f" || build == "F"{
                MapBuild.image = UIImage(named: "A")
            }
        }else{
                set_building.text = "Anexo de Ingenieria"
            if build == "g" || build == "G"{
                MapBuild.image = UIImage(named: "g")
            }else if build == "h" || build == "H"{
                MapBuild.image = UIImage(named: "h")
            }else if build == "i" || build == "I"{
                MapBuild.image = UIImage(named: "i")
            }else if build == "j" || build == "J"{
                MapBuild.image = UIImage(named: "j")
            }else if build == "k" || build == "K"{
                MapBuild.image = UIImage(named: "k")
            }else if build == "l" || build == "L"{
                MapBuild.image = UIImage(named: "l")
            } else if build == "m" || build == "M"{
                MapBuild.image = UIImage(named: "m")
            }else if build == "n" || build == "N"{
                MapBuild.image = UIImage(named: "n")
            }else if build == "o" || build == "O"{
                MapBuild.image = UIImage(named: "o")
            }else if build == "p" || build == "P"{
                MapBuild.image = UIImage(named: "p")
            }else if build == "q" || build == "Q"{
                MapBuild.image = UIImage(named: "q")
            }else if build == "r" || build == "R"{
                MapBuild.image = UIImage(named: "r")
            }else  if build == "s" || build == "S"{
                MapBuild.image = UIImage(named: "s")
            }else if build == "t" || build == "T"{
                MapBuild.image = UIImage(named: "t")
            }else if build == "u" || build == "U"{
                MapBuild.image = UIImage(named: "u")
            }else if build == "v" || build == "V"{
                MapBuild.image = UIImage(named: "v")
            }else if build == "y" || build == "Y"{
                MapBuild.image = UIImage(named: "y")
            }else if build == "z" || build == "Z"{
                MapBuild.image = UIImage(named: "z")
            }
                
        }
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
