//
//  ContactListViewController.swift
//  Contact Lesson
//
//  Created by Bogdan Sikhovski on 3/10/16.
//  Copyright © 2016 Sik Marketing. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var contacts : [Contact]?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.contacts = DataManager.sharedManager.loadContacts()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView,
        
        numberOfRowsInSection section: Int) ->Int{
            
            return (self.contacts?.count)!
            
    }
    
    func tableView(tableView: UITableView,
        
        cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell{
            
        let contact = self.contacts![indexPath.row]
            
            
            let cell = UITableViewCell()
            
            cell.textLabel?.text = "\(contact.firstName!)\(contact.lastName!) - \(indexPath.row)"
            
            return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ContactDetailsSegue", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ContactDetailsSegue"
        {
            if let selectedCell = self.tableView.indexPathForSelectedRow{
                let selectedContact = self.contacts![ selectedCell.row]
                
                if let detailVC = segue.destinationViewController as? ContactDetailViewController
                {
                    detailVC.selectedContact = selectedContact
                }
                
            }
        }
    
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        print("calling fetch contacts")
        let webService = WebServiceManager()
        webService.fetchContacts{(newContacts)-> Void in
        //code goes here
//        print("calling fetch contacts")
            

        
        }
    }


}














