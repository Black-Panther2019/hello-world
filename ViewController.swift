//
//  ViewController.swift
//  WarCard Game
//
//  Created by David Lucas on 6/15/19.
//  Copyright © 2019 David Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var leftplayerscore: UILabel!
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
  
        let rightNumber = Int.random(in: 2...14)
//Update the images views
        leftimageview.image = UIImage(named: "card\(leftNumber)")
        rightimageview.image = UIImage(named:"card\(rightNumber)")
     
        // compare random numbers
        if leftNumber > rightNumber {
            
            //left side wins
            leftScore += 1
            rightscorelabel.text = String(leftScore)
            
        }
            else if leftNumber < rightNumber {
                
                //right side wins
                rightScore += 1
            rightscorelabel.text = String(rightScore)
                
            }
            else {
            
            //Tie
        
        
        
        } }
    
    

}
