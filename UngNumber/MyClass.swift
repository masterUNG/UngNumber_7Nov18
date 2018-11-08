//
//  MyClass.swift
//  UngNumber
//
//  Created by MasterUNG on 8/11/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import Foundation

class MyClass {
    
//    Explicit
    let titleHaveSpace: String = "Have Space"
    let messageHaveSpace: String = "Please Fill Every Blank"
    let preUrlAddUser: String = "https://www.androidthai.in.th/tar/addUserMaster.php?isAdd=true&Name="
    let columnStrings = ["&User=", "&Password="]
    
    
    
    func findUrlAddUser(myName: String, myUser: String, myPassword: String) -> String {
        
        let resultString: String = preUrlAddUser + myName + columnStrings[0] + myUser + columnStrings[1] + myPassword
        return resultString
        
    }
    
    
    
    
    
}   // MyClass
