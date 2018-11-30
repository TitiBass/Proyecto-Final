//
//  RecomenTableViewController.swift
//  LogInFormSwift
//
//  Created by macbook on 11/29/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

var pets = ["Cálculo diferencial y G.A.", "ALgebra lineal", "Cálculo Integral","Cálculo Vectorial", "Ecuaciones Diferenciales", "Mecánica", "Termodinamica", "Química", "Electricidad y Magnetismo", "Análisis númerico"]
var petDesc = ["José Salgado Rodriguez ------        9.7", "Francisco Barrera Del Rayo ------    8.7", "Margarita Ramírez Galindo ------    8.1","Luis Humberto Soriano  ------            9.2" ,"Érik Castañeda de Isla ------       9.3", "Diego Alberto Zavala Galicia    ------    8.7", "Diana Zaragoza Zuñiga ------     8","Alfredo Velásquez Márquez ------    8","Fernando Vega Calderón ------    9.6","Anahí Flores Perez ------                      8.2"]
var profe22 = ["Sergio Roberto Arzamendi ------   9.1 ","Gerardo Avilés Rosas ------              9.7","Crail Corzas Sergio Carlos ------    8.3", "Sergio Roberto Arzamendi ------      9.1","Raúl Puente Mancilla    ------       9.5", "Nicolás Rodríguez Carreón ------          9.9","Alejandro Rojas Tapia   -------  9.1","Esther Flores Cruz ------                  8.2","Rigel Gámez Leal ------                  8.9","Salvador García Burgos ------              10"]
var profe33 = ["Sofia Magdalena Avila ------          8.8","Aldo Jimenez Arteaga ------             9.7","Maira Ramos Lopez ------                 9.5", "Jaime Erik Castañeda de Isla ------  9.5", "Juan Velázquez Torres ------       8.9","Carlos Alberto Pineda Figueroa ------  9.5","Juan Antonio Sandoval ------    8.3 ","Luis Javier Acosta Bernal ------       8.6","Raymundo Gaytán Pérez ------     8.9","Jesús Edmundo Ruíz Medina ------    8.6"]
var myIndex = 0

class RecomenTableViewController: UITableViewController {
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
