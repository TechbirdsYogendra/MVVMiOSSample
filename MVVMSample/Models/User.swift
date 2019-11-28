//
//  User.swift
//  AutoLayoutSample
//
//  Created by Yogendra Singh on 28/11/19.
//  Copyright © 2019 Yogendra Singh. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var firstName: String
    var lastName: String
    var emailId: String
    var birthDate: Date
    var address: Address
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case emailId = "email_id"
        case birthDate = "birth_date"
        case address = "address"
        case image = "profile_image"
    }
}

struct Address: Codable {
    
    var houseNumber: String
    var locality: String
    var city: String
    var state: String
    var country: String
    var pinCode: String
}
