//
//  WebServiceManager.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/17/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//
import Foundation
struct WebServiceManager{
    
    func fetchContacts(callback : ([Contact])-> Void){
        let url = NSURL(string: "http://jsonplaceholder.typicode.com/users")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request)
        {
            data, response, err in
            if err == nil{
                var contactList = [Contact]()
                
                do
                {
                    let jsonArray : [ [String : AnyObject] ] = try NSJSONSerialization.JSONObjectWithData
                    (data!, options: NSJSONReadingOptions.AllowFragments ) as? [[String : AnyObject]]
                    
                    {
                        print("this array is")
                        print(jsonArray)
                        
                        for jsonDict in jsonArray {
                            let newContact = self.parseContact( jsonDict )
                        }
                    }
                }
                    
                catch
                {
                    print("we have an error in JSON conversion")
                }
                
                else print("Got an error: \(err)")
                
            }
        }
            task.resume()
    }
    
    private func parseContact( jsonDict : [ String: AnyObject] ) -> Contact
        {
            var newContact = Contact()
            newContact.phoneNumber = jsonDict["phone"] as? String
            if let addressDict = jsonDict["address"] as? [String : AnyObject]
            {
                newContact.streetAddress = addressDict["street"] as? String
                newContact.city = addressDict ["city"] as? String
                newContact.zipCode = addressDict ["zipcode"] as? String 
            }
        
            return newContact
        }
}