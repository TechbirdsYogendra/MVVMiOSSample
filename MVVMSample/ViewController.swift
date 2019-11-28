//
//  ViewController.swift
//  AutoLayoutSample
//
//  Created by Yogendra Singh on 27/11/19.
//  Copyright © 2019 Yogendra Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: @IBOutlets
    @IBOutlet weak var profileView: ProfileView!
    
    //MARK: @Variables
    var userViewModel: UserViewModel!
    
    //MARK: @Constants
    let userJSON = """
    {
        "first_name": "Yogendra",
        "last_name": "Singh",
        "email_id": "XXX@gmail.com",
        "birth_date": "1995-07-15T02:02:55.000-08:00",
        "address": {
            "houseNumber": "Block D House 89",
            "locality": "Sector 101",
            "city": "Noida",
            "state": "Utter Pradesh",
            "country": "India",
            "pinCode": "201301"
        },
       "profile_image": "user"
    }
    
    """.data(using: .utf8)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUserData()
    }
    
    private func fetchUserData() {
        
        if let userData = userJSON {
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(DateFormatter.iso8601Full)
            do {
               let user =  try decoder.decode(User.self, from: userData)
                userViewModel = UserViewModel(user)
                userViewModel.configureView(profileView)
            } catch let error {
                print("Error in parsing data :\(error.localizedDescription)")
            }
        }
    }
}

