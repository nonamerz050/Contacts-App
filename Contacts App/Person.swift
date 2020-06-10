//
//  Person.swift
//  Contacts App
//
//  Created by MacBook Pro on 10.06.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataManager {
    var names = ["Andy", "Bob", "Mike", "Jake", "Carl", "Michael", "John", "Steve", "Denis", "Nate"]
    var surnames = ["Brown", "Smith", "Robinson", "Iverson", "Rose", "Nash", "Rondo", "Holden", "Diaz", "Williams"]
    var phones = ["12345", "23456", "34567", "45678", "56789", "67890", "78901", "89012", "90123", "01234"]
    var emails = ["1123@mail.ru", "2dsfs@mail.ru", "3asdfg@mail.ru", "4cvsdfe@mail.ru", "5sdkjk@mail.ru", "623@mail.ru", "73re@mail.ru", "84clsa@mail.ru", "9dgsdl@mail.ru", "0wdlvk@mail.ru"]
}

extension Person {
    static func personInfo() -> [Person] {
        var persons: [Person] = []
        let personInfo = DataManager()
        
        let name = personInfo.names.shuffled()
        let surname = personInfo.surnames.shuffled()
        let phone = personInfo.phones.shuffled()
        let email = personInfo.emails.shuffled()
        
        for value in 0..<name.count {
            let person = Person(name: name[value],
                                surname: surname[value],
                                phone: phone[value],
                                email: email[value])
            persons.append(person)
        }
        return persons
    }
}
