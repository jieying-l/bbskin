//
//  SignInViewController.swift
//  LoginPractise
//
//  Created by user142439 on 12/10/18.
//  Copyright © 2018 Dea Gjini. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        let username = UsernameTextField.text
        let password = passwordTextField.text
        let defaults = UserDefaults.standard
//        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomePageViewController") as! HomePageViewController
        
        
        
        if (UsernameTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)!
        {
            displayMessage(userMessage: "Required fields are empty")
            //return
        }
        
        if (username!.elementsEqual(defaults.string(forKey: "FirstName")!) == true) && (password!.elementsEqual(defaults.string(forKey: "Password")!) == true)
        {
            performSegue(withIdentifier: "Yeet", sender: self)
        }
        
        if (username!.elementsEqual(defaults.string(forKey: "FirstName")!) == true) || (password!.elementsEqual(defaults.string(forKey: "Password")!) == true)
        {
            displayMessage(userMessage: "Your password or Username is incorrect")
        }
        
        if (username!.elementsEqual(defaults.string(forKey: "FirstName")!) != true)||(password!.elementsEqual(defaults.string(forKey: "Password")!) != true)
        {
            displayMessage(userMessage: "not a member :(((")
        }
        
       if (username?.elementsEqual(defaults.string(forKey: "FirstName")!) != true)
            || (password?.elementsEqual(defaults.string(forKey: "Password")!) != true){
            displayMessage(userMessage: "wrong username or password, try again")
        }
    }
    
    @IBAction func registerNewAccountButtonTapped(_ sender: Any) {
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterUserViewController") as! RegisterUserViewController
        
        self.present(registerViewController, animated: true)
    }
    
    func displayMessage(userMessage:String) -> Void{
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default){
                (action:UIAlertAction) in
                //trigger when ok button tapped
                print("OK button tapped")
                DispatchQueue.main.async {
                    //self.dismiss(animated: true, completion: nil)
                }
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
