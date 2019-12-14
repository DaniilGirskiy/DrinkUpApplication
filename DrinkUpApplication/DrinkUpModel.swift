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
        case beer = 5 // alcohol strength
        case wine = 14
        case vodka = 40
    }
    enum Gender: Float {
        case male = 0.1 // coefficient ???
        case female = 0.2
        case child = 0.3
    }
    
    var drink: Drink?
    var numberOfBottles: Float?
    var gender: Gender?
    var bodyWeight: Float?

}

