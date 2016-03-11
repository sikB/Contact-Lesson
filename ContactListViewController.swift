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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        
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
}












