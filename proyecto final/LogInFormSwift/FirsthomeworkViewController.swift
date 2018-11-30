//
//  FirsthomeworkViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 11/8/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

var listhomework = ["serie integral","Tarea de Chayito"]
class FirsthomeworkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var homework: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (listhomework.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = listhomework[indexPath.row]
        
        return (cell)
    }
    
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
    if editingStyle == UITableViewCellEditingStyle.delete{
        listhomework.remove(at: indexPath.row)
        homework.reloadData()
        
    }


}
    override func viewDidAppear(_ animated: Bool) {
        homework.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    


}
