//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ethan Wilson on 6/11/18.
//  Copyright © 2018 Ethan Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var formalitySwitch: UISwitch!
    @IBAction func changeLabel(_ sender: UIButton) {
        
//        let name = nameTextField.text
//        nameLabel.text = "My name is..." + name!
        
        if (formalitySwitch.isOn) {
            nameLabel.text = "Greetings, \(nameTextField.text!)"
        } else {
            let firstName = nameTextField.text?.components(separatedBy: " ")[0]
            
            nameLabel.text = "What's up \(firstName ?? "")?"
        }
    }
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var changeAlpha: UISlider!
    
    
    
    
    @IBAction func switchFormality(_ sender: UISwitch) {
       switchLabelFormality(formalitySwitchInFunction: formalitySwitch)
        
    }
    
    func switchLabelFormality(formalitySwitchInFunction: UISwitch) {
        if (formalitySwitchInFunction.isOn) {
            nameLabel.text = "Greetings \(nameTextField.text!)"
            
        } else {
            let firstName = nameTextField.text?.components(separatedBy: " ")[0]
            
            nameLabel.text = "What's up \(firstName ?? "")?"
        }
    }
    @IBAction func changeColor(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: CGFloat(changeAlpha.value))
    }
    
    

}

