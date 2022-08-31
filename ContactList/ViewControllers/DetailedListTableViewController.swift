//
//  DetailedTableViewController.swift
//  ContactList
//
//  Created by Stefan Iurin on 30.08.2022.
//

import UIKit

class DetailedListTableViewController: UITableViewController {

    var persons: [Persons] = []
    


    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.number
        default:
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}
