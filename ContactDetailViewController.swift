//
//  ContactDetailViewController.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/15/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    var selectedContact: Contact!
    
    

    @IBOutlet var firstNameTF: UITextField!
    
    @IBOutlet var lastNameTF: UITextField!
    
    @IBOutlet var phoneNumberTF: UITextField!
    
    @IBOutlet var streetAddressTF: UITextField!

    @IBOutlet var cityTF: UITextField!
    
    @IBOutlet var stateTF: UITextField!
    
    @IBOutlet var zipCodeTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.firstNameTF.text = self.selectedContact.firstName

        // Do any additional setup after loading the view.
    }

    
    
}
    



