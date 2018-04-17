//
//  Person.swift
//  Week2Assessment
//
//  Created by Ryan Brashear on 12/17/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var email: String
    
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}
