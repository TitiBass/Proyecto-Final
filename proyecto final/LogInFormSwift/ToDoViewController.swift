//
//  ToDoViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 25/10/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

var list = ["Buy milk", "Run 5 miles", "Get Peter", "Plant my new plants"]

class ToDoViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

 

    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
