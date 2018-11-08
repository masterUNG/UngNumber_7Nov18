//
//  ViewController.swift
//  UngNumber
//
//  Created by MasterUNG on 7/11/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userString: String = ""
    var passwordString: String = ""
    
    

    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func singInButton(_ sender: Any) {
        
        userString = userTextField.text!
        passwordString = passwordTextField.text!
        
        
        
        
    }   // signIn
    
    func checkSpace() -> Bool {
        var result = false
        if (userString.count == 0) || (passwordString.count == 0) {
            result = true
        }
        return result
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

