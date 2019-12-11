//
//  DrinkUpModel.swift
//  DrinkUpApplication
//
//  Created by Danya on 09/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import Foundation

struct DrinkUpInformation {
    enum Drink: Float {
        case beer = 0.1
        case wine = 0.2
        case vodka = 0.3
    }
    enum Gender: Float {
        case male = 0.1
        case female = 0.2
        case child = 0.3
    }
    
    var drink: Drink?
    var numberOfBottles: Float?
    var gender: Gender?
    var bodyWeight: Float?

    func calculateEthanol() {
        // формула
        print(drink!.rawValue + numberOfBottles! + gender!.rawValue + bodyWeight!) 
    }
}


struct Test {
    var str = ""
    var str2 = ""
}
