//
//  ViewController4.swift
//  DrinkUpApplication
//
//  Created by Danya on 08/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    var info = DrinkUpInformation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func comeBack (_ : UIStoryboardSegue) {
        // действия при возвращении назад?
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextController = segue.destination as? ViewController5 else { return }
        
        info.bodyWeight = Float(inputTextField.text ?? "error")
        
        nextController.info = info
        
    }

}

extension ViewController4: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /*вызывается при нажатии на enter*/
        textField.resignFirstResponder()
        return true
    }
}
