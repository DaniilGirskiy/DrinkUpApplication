//
//  ViewController2.swift
//  DrinkUpApplication
//
//  Created by Danya on 08/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    var info = DrinkUpInformation()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self                            // зачем?
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextController = segue.destination as? ViewController3 else { return }
        
        info.numberOfBottles = Float(inputTextField.text ?? "error")
        
        nextController.info = info
        
    }
    
}

extension ViewController2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /*вызывается при нажатии на enter*/
        textField.resignFirstResponder()
        return true
    }
}
