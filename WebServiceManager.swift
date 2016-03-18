//
//  WebServiceManager.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/17/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//

struct WebServiceManager{

    func fetchContacts(callback : ([Contact])-> Void){
        let url = NSURL(string: "http://jsonplaceholder.typicode.com/users")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request)
            {
                data, response, err in
                if err == nil{
                
                }
                    
                else{
                print("Got an error: \(err)")
                }
                
            var contactList = [Contact]()
            let jsonArray : [ [String : AnyObject]] = NSJSONSerialization.JSONObjectWithData
            (data!, options: NSJSONReadingOptions.AllowFragments)
        }
        task.resume()
    }
}
