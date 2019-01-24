//
//  AccountViewController.swift
//  LoginPractise
//
//  Created by L on 2019-01-24.
//  Copyright © 2019 Dea Gjini. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var userFirstNameLabel: UILabel!
    @IBOutlet weak var userLastNameLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        //let check = defaults.string(forKey: "FirstName")
        userFirstNameLabel.text = (defaults.string(forKey: "FirstName")!)
        userLastNameLabel.text = (defaults.string(forKey: "LastName")!)
        emailAddressLabel.text = (defaults.string(forKey: "Email")!)
    }
    
    @IBAction func signOutButton(_ sender: Any) {
        let SignInViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        
        self.present(SignInViewController, animated: true)
        
    }
    
}
