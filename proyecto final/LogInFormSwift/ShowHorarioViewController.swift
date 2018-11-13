//
//  ShowHorarioViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 25/10/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class ShowHorarioViewController: UIViewController {
    
    @IBOutlet weak var matinfo: UILabel!
    @IBOutlet weak var profinfo: UILabel!
    @IBOutlet weak var horainfo: UILabel!
    @IBOutlet weak var salinfo: UILabel!
    
    var offisrtview: horario!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        matinfo.text = offisrtview.materia
        profinfo.text = offisrtview.profesor
        horainfo.text = offisrtview.horario
        salinfo.text = offisrtview.salon
 */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "location" {
            
            let destino = segue.destination as! infoClassViewController
            destino.offisrtview2 = offisrtview
        }}
        

}
