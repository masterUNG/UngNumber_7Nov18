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
    var myClass = MyClass()
    
    
    
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
        
//        Check Space
        if checkSpace(myName: myNameString, myUser: myUserString, myPassword: myPasswordString) {
            print("Have Space")
            myAlertDialog(titleString: myClass.titleHaveSpace, messageString: myClass.messageHaveSpace)
        }   else {
            print("No Space")
            addUserToServer(myName: myNameString, myUser: myUserString, myPassword: myPasswordString)
        }
        
        
    }   // cloudUpload
    
    func addUserToServer(myName: String, myUser: String, myPassword: String) -> Void {
        
        let urlString: String = myClass.findUrlAddUser(myName: myName, myUser: myUser, myPassword: myPassword)
        print("urlString ==> \(urlString)")
        
        let urlPHP = URL(string: urlString)
        let request = NSMutableURLRequest(url: urlPHP!)
        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
            
//            Check Success
            if (error != nil) {
                print("Have Error")
            } else {
                
                if let myReadData = data {
                    
                    let canReadData = NSString(data: myReadData, encoding: String.Encoding.utf8.rawValue)
                    
                    let resultString: String = canReadData! as String
                    print("resultString ==> \(resultString)")
                    
                    if (Bool(resultString)!) {
                        
                        DispatchQueue.main.async {
                            self.backMain()
                        }
                        
                    } else {
                        print("Cannot Upload")
                    }
                    
                    
                }   // if1
            }   //if1
        }   // task
        task.resume()
    }   // addUser
    
    func backMain() -> Void {
        performSegue(withIdentifier: "BackMain", sender: self)
    }
    
    
    func myAlertDialog(titleString: String, messageString: String) -> Void {
        let alert = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    func checkSpace(myName: String, myUser: String, myPassword: String) -> Bool {
        var resultBool: Bool = false
        
        if (myName.count == 0) || (myUser.count == 0) || (myPassword.count == 0) {
            resultBool = true
        }
        
        return resultBool
    }
    
    
    
    
    
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
