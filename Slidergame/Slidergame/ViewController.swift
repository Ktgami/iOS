//
//  ViewController.swift
//  Slidergame
//
//  Created by Admin on 24/08/2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var numSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hardcoreSwitch: UISwitch!
    
    @IBOutlet weak var hardModeLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var counter = 0
    var randomNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        // creating random variable
        // and assign it value to label to display game goal
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = "Try get it to: \(randomNumber) % "
        //default value for slider
        numSlider.value = 50
        
        
    }


    
    
    
    
    @IBAction func checkValue(_ sender: Any) {

        
        // hard core mode on
        
        if hardcoreSwitch.isOn == false {
            if (Int(numSlider.value) <= randomNumber+6) && (Int(numSlider.value) >= randomNumber-6) {
                
                resultLabel.text = "You won !"
                resultLabel.backgroundColor = UIColor.green
            }else {
                resultLabel.text = "Oh,TRY AGAIN !"
                resultLabel.backgroundColor = UIColor.red
            }
        } else {
        
           
            
        // checking if slider value hits goal value of game
            if Int(numSlider.value) == randomNumber {
                resultLabel.text = "You won !"
                resultLabel.backgroundColor = UIColor.green
            } else {
                resultLabel.text = "Oh,TRY AGAIN !"
                resultLabel.backgroundColor = UIColor.red
            }
        }
        
        resultLabel.isHidden = false
        // changing the state of play again button to un hidden
        playAgainButton.isHidden = false
        
    }
    
    @IBAction func hardModeAction(_ sender: Any) {
        
        if hardcoreSwitch.isOn == true {
            hardModeLabel.isHidden = false
        } else {
            hardModeLabel.isHidden = true
        }
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(50, animated: false)
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = "Try get it to: \(randomNumber) % "
        resultLabel.isHidden = true
        playAgainButton.isHidden = true
        
        
    }
    
    
    @IBAction func SliderValueChanged(_ sender: Any) {

        
        
   }
}

