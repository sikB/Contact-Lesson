//
//  Data Manager.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/10/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//

struct DataManager {
    static let sharedManager = DataManager()
    
    
    func saveContacts(contacts:[Contact]) {
        
    }
    
    func loadContacts() -> [Contact]? {
        var contacts = [Contact]()
        for var i = 0; i < 10; i++ {
            var c = Contact()
            c.firstName = "Vinny"
            c.lastName = "Barbarino"
            c.streetAddress = "123 Happy Street"
            c.phoneNumber = "404-555-1212"
            c.city = "Brooklyn"
            c.state = "New York"
            c.zipCode = "11201"
            contacts.append(c)
        }
        return contacts
    }
}