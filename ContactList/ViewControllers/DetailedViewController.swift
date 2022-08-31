//
//  DetailViewController.swift
//  ContactList
//
//  Created by Stefan Iurin on 30.08.2022.
//

import UIKit

class DetailedViewController: UIViewController {
    
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personsList: Persons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = personsList.fullName
        
        numberLabel.text = "Phone: \(personsList.number)"
        emailLabel.text = "E-mail: \(personsList.email)"
    }
    
}
