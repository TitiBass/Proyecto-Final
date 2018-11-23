//
//  JuegoController.swift
//  LogInFormSwift
//
//  Created by macbook on 11/23/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit

class JuegoController: UIViewController {
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var gameIsActive = true
    let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    

    @IBOutlet weak var label: UILabel!
    
    @IBAction func cruces(_ sender: AnyObject) {
        
        if (gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1)
            {
                sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                activePlayer = 2
            }
            else
            {
                sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                activePlayer = 1
            }
        }
        for combination in winningCombinations   {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                gameIsActive = false
                
                if gameState[combination[0]] == 1
                {
                    label.text = "¡La cruz ha ganado!"
                }
                else
                {
                    label.text = "¡El circulo ha ganado!"
                }
                
                playAgainButton.isHidden = false
                label.isHidden = false
            }
        }
        
        gameIsActive = false
        
        for i in gameState
        {
            if i == 0
            {
                gameIsActive = true
                break
            }
        }
        
        if gameIsActive == false
        {
            label.text = "¡Es un empate!"
            label.isHidden = false
            playAgainButton.isHidden = false
        }        
    }
    


    @IBOutlet weak var playAgainButton: UIButton!
  
    @IBAction func playAgain(_ sender: AnyObject)  {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



}
