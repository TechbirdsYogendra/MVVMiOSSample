//
//  ProfileView.swift
//  AutoLayoutSample
//
//  Created by Yogendra Singh on 28/11/19.
//  Copyright © 2019 Yogendra Singh. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    //MARK: @IBoutlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        self.clipsToBounds = true
        self.layer.cornerRadius = 5.0
        
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
    }
    

}
