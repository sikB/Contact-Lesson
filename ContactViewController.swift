//
//  ContactViewController.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/10/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//

import Cocoa

class ContactViewController: NSViewController {

    var contacts : [Contact]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.contacts = DataManager.sharedManager.loadContacts()
    }
    
}
