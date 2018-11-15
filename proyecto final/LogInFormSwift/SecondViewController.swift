//
//  SecondViewController.swift
//  LogInFormSwift
//
//  Created by Eng Tian Xi on 04/09/2016.
//  Copyright © 2016 Eng Tian Xi. All rights reserved.
//

import UIKit


var horariomateria = [horario]()

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
@IBOutlet weak var myTableView: UITableView!
    
    //var horariomateria = [horario]()
    var shop = [horario]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logoutButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horariomateria.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "horariofinal", for: indexPath) as! HoraFiTableViewCell
        
        cell.labelCell.text = horariomateria[indexPath.row].materia
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infomaterias" {
            let indexPath = myTableView.indexPathForSelectedRow
            let destino = segue.destination as! ShowHorarioViewController
            destino.offisrtview = horariomateria[(indexPath?.row)!]
        }
            
        }
   
    
    func deleteAccount(){
        var array = ["1","2","3"]
        array.remove(at: 0)
    }
    @IBAction func unsegueSecondView(unwindSegue: UIStoryboardSegue){
   
    }
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
}
