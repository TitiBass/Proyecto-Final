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
        if tab == 0 {
            horariomateria.append(horario(materia: "Calculo", profesor: "Pedro", horario: "10:00", salon: "i203", dias: "Lu, Mi"))
            horariomateria.append(horario(materia: "Dinamica", profesor: "Diego", horario: "11:30", salon: "j203", dias: "Lu, Vi"))
            horariomateria.append(horario(materia: "Sistemas", profesor: "Julian", horario: "13:00", salon: "A203", dias: "Ma, Ju"))
            horariomateria.append(horario(materia: "señales", profesor: "Chayito", horario: "15:00", salon: "B203", dias: "Ma, Ju"))
        }
        tab = 1
        sesion = 1
        sesi.set(sesion, forKey: "Active")
    
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
        cell.classday.text = horariomateria[indexPath.row].dias
        cell.classhrs.text = horariomateria[indexPath.row].horario
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            horariomateria.remove(at: indexPath.row)
            myTableView.reloadData()
            
        }}
    
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
    
    @IBAction func Loggof(_ sender: UIButton) {
        sesion = 0
          sesi.set(sesion, forKey: "Active")
        
    }
}
