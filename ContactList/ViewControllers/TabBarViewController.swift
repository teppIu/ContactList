//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Stefan Iurin on 31.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Persons.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
    }
    
    private func setupViewController() {
        
        guard let personsListVC = viewControllers?.first as? PersonsListTableViewController else { return }
        personsListVC.persons = persons
        
        guard let detailedListVC = viewControllers?.last as? DetailedListTableViewController else { return }
        detailedListVC.persons = persons
    }
}
