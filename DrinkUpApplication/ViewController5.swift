//
//  ViewController5.swift
//  DrinkUpApplication
//
//  Created by Danya on 08/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var info = DrinkUpInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "\(info.drink!.rawValue), \(info.numberOfBottles!), \(info.gender!.rawValue), \(info.bodyWeight!)"
        // Do any additional setup after loading the view.
    }
   
}
