//
//  ContactDetailsViewController.swift
//  Contacts App
//
//  Created by MacBook Pro on 10.06.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"

    }

}
