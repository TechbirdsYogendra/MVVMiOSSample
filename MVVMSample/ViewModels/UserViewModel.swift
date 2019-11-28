//
//  UserViewModel.swift
//  AutoLayoutSample
//
//  Created by Yogendra Singh on 28/11/19.
//  Copyright © 2019 Yogendra Singh. All rights reserved.
//

import UIKit

class UserViewModel: NSObject {

    var user: User!
    
    init(_ user: User) {
        self.user = user
    }
    
    var name: String {
        return ("\(user.firstName) \(user.lastName)")
    }
    
    var email: String {
        return user.emailId
    }
    
    var age: String {
        
        let now = Date()
        let birthday: Date = user.birthDate
        let calendar = Calendar.current

        let ageComponents = calendar.dateComponents([.year, .month], from: birthday, to: now)
        let year = ageComponents.year!
        let months = ageComponents.month!
        return "Age: \(year) years and \(months) months."
    }
    
    var address: String {
        let address = user.address
        let addressString = "\(address.houseNumber) \(address.locality), \(address.city), \(address.state), \(address.country) \(address.pinCode)."
        return addressString
    }
    
    var profileImage: String {
        return user.image
    }
}

extension UserViewModel {
    
    func configureView(_ view: ProfileView) {
        view.nameLabel.text = self.name
        view.emailLabel.text = self.email
        view.ageLabel.text = self.age
        view.addressLabel.text = self.address
        view.profileImageView.image = UIImage(named: self.profileImage)
    }
}

extension DateFormatter {
    
  static let iso8601Full: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter
  }()
}
