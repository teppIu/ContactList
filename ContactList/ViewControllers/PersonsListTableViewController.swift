//
//  PersonsListTableViewController.swift
//  ContactList
//
//  Created by Stefan Iurin on 30.08.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {

    var persons: [Persons] = []

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedVC = segue.destination as? DetailedViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = persons[index.row]
        detailedVC.personsList = person
    }
    
    
}
