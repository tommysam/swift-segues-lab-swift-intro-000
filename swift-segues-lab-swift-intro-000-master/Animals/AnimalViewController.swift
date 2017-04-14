//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    var selectedAnimal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedAnimal = selectedAnimal {
            mainLabel.text = nameToEmoji(name: selectedAnimal)
            subLabel.text = selectedAnimal
            navigationItem.title = selectedAnimal
        }
    }
    
    func nameToEmoji(name: String) -> String{
        switch name{
            case "Dog": return "🐶"
            case "Cat": return "🐱"
            case "Mouse": return "🐭"
            case "Hamster": return "🐹"
            case "Bunny": return "🐰"
            case "Panda": return "🐼"
            case "Lion": return "🦁"
            case "Pig": return "🐷"
            case "Frog": return "🐸"
            case "Octopus": return "🐙"
            
        default: return "🖕"
        }
    }
}



