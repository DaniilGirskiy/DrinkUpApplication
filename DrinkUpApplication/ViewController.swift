//
//  ViewController.swift
//  DrinkUpApplication
//
//  Created by Danya on 08/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var info = DrinkUpInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func comeBack (_ : UIStoryboardSegue) {
        // действия при возвращении назад?
    }
    
    
    @IBAction func drinkButtonPressed(_ sender: UIButton) {
    
        switch sender.tag {
        case 1:
            info.drink = .beer
        case 2:
            info.drink = .wine
        case 3:
            info.drink = .vodka
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextController = segue.destination as? ViewController2 else { return }
        
        nextController.info = info
        
    }
}

