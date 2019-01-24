//
//  ViewController.swift
//  LoginPractise
//
//  Created by user142439 on 12/10/18.
//  Copyright © 2018 Dea Gjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let questController = self.storyboard?.instantiateViewController(withIdentifier: "QuestionaireTableViewController") as! QuestionaireTableViewController
        self.present(questController, animated: true)
    }


}

