//
//  RegisterViewController.swift
//  UngNumber
//
//  Created by MasterUNG on 8/11/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
//    Explicit
    var nameString: String?
    var userString: String?
    var passwordString: String?
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    @IBAction func cloudUploadButton(_ sender: Any) {
        
//        Get Value From TextField
        nameString = nameTextField.text
        print("nameString ==> \(String(describing: nameString))")
        // nameString ==> Optional
        
        let myNameString: String = nameString!
        
        userString = userTextField.text
        let myUserString: String = userString!
        
        passwordString = passwordTextField.text
        let myPasswordString: String = passwordString!
        
        print("myNameStrign ==> \(myNameString)")
        print("myUserStrign ==> \(myUserString)")
        print("myPasswordStrign ==> \(myPasswordString)")
        
        
        
    }   // cloudUpload
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
