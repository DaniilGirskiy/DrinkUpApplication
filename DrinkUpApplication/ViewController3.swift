//
//  ViewController3.swift
//  DrinkUpApplication
//
//  Created by Danya on 08/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    var info = DrinkUpInformation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func genderButtonPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            info.gender = .male
        case 2:
            info.gender = .female
        case 3:
            info.gender = .child
        default:
            break
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextController = segue.destination as? ViewController4 else { return }
        
        nextController.info = info
        
    }
    
}
