//
//  SecondViewController.swift
//  LogInFormSwift
//
//  Created by Eng Tian Xi on 04/09/2016.
//  Copyright © 2016 Eng Tian Xi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
@IBOutlet weak var myTableView: UITableView!
    
    var productos = [horario]()
    var shop = [horario]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        productos.append(horario(materia: "Calculo", profesor: "chapatin", grupo: "23", horario: "10 am", salon: "p101"))
        // Do any additional setup after loading the view.
    }

    @IBAction func logoutButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "infomat", for: indexPath) as! HoraFiTableViewCell
        
        cell.labelCell.text = productos[indexPath.row].materia
        return cell
    }
    
 
    func deleteAccount(){
        var array = ["1","2","3"]
        array.remove(at: 0)
    }
    @IBAction func unsegueSecondView(unwindSegue: UIStoryboardSegue){
        
    }
}
