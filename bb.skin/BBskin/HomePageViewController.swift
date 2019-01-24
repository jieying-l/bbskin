//
//  HomePageViewController.swift
//  LoginPractise
//
//  Created by user142439 on 12/11/18.
//  Copyright © 2018 Dea Gjini. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

  
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        //let check = defaults.string(forKey: "FirstName")
        userNameLabel.text = (defaults.string(forKey: "FirstName")!)
    }
    
    @IBAction func survButton(_ sender: Any) {
        let questController = self.storyboard?.instantiateViewController(withIdentifier: "QuestionaireTableViewController") as! QuestionaireTableViewController
        self.present(questController, animated: true)
    }
}
