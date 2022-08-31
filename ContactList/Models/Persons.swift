//
//  Persons.swift
//  ContactList
//
//  Created by Stefan Iurin on 30.08.2022.
//

import Foundation

struct Persons {
    var name: String
    var surname: String
    var email: String
    var number: String
    
    var fullName: String
    
    
    static func getPerson() -> [Persons] {
        var personsList: [Persons] = []
        
        let randomName = DataManager.nameList.shuffled()
        let randomSurname = DataManager.surnameList.shuffled()
        let randomEmail = DataManager.emailList.shuffled()
        let randomNumber = DataManager.numberList.shuffled()
        
        for index in 0..<randomName.count {
            personsList.append(Persons(name: randomName[index],
                                       surname: randomSurname[index],
                                       email: randomEmail[index],
                                       number: randomNumber[index],
                                       fullName: "\(randomName[index]) \(randomSurname[index])"))
        }
        return personsList
    }
}
