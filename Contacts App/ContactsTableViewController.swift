//
//  ContactsTableViewController.swift
//  Contacts App
//
//  Created by MacBook Pro on 09.06.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var contacts = Person.personInfo()

   
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)

        cell.textLabel?.text = contacts[indexPath.row].fullName

        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contactDetailsVC = segue.destination as! ContactDetailsViewController
        contactDetailsVC.person = contacts[indexPath.row]
    }
}





































