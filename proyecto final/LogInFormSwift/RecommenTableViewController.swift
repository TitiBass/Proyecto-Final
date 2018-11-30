//
//  RecommenTableViewController.swift
//  LogInFormSwift
//
//  Created by macbook on 11/29/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit
var pets = ["dog", "cat", "rabbit"]
var petDesc = ["Dog is an animal that has four legs", "A cat is an animal that likes to eat fish", "A rabbit is an animal that likes to jump arond"]
var myIndex = 0
class RecommenTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = pets[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
