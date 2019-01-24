//
//  RegisterUserViewController.swift
//  LoginPractise
//
//  Created by user142439 on 12/10/18.
//  Copyright © 2018 Dea Gjini. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController{
    

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextFeild: UITextField!
    @IBOutlet weak var emailTestField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reenterPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpButtonTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        //validate required fields are not empty
        if (firstNameTextField.text?.isEmpty)! ||
            (lastNameTextFeild.text?.isEmpty)! ||
            (emailTestField.text?.isEmpty)! ||
            (passwordTextField.text?.isEmpty)! ||
            (reenterPasswordTextField.text?.isEmpty)! {
            //display alert message and return
            displayMessage(userMessage: "All fields are required to fill in")
            self.dismiss(animated: true, completion: nil)
        }
        
        //validate password
        if ((passwordTextField.text?.elementsEqual(reenterPasswordTextField.text!))! != true){
            //display alert message and return
            displayMessage(userMessage: "Please make sure passwords match")
            self.dismiss(animated: true, completion: nil)
        }
        

        defaults.set(firstNameTextField.text, forKey: "FirstName")
        defaults.set(lastNameTextFeild.text, forKey: "LastName")
        defaults.set(emailTestField.text, forKey: "Email")
        defaults.set(passwordTextField.text, forKey: "Password")

        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomePageViewController") as! HomePageViewController
        self.present(homeViewController, animated: true)
        
        
    }
    
    func displayMessage(userMessage:String) -> Void{
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)

            let OKAction = UIAlertAction(title: "OK", style: .default){
                (action:UIAlertAction) in
                //trigger when ok button tapped
                print("OK button tapped")
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
//
//    func removeActivityIndicator(activityIndicator: UIActivityIndicatorView){
//        DispatchQueue.main.async{
//            activityIndicator.stopAnimating()
//            activityIndicator.removeFromSuperview()
//        }
//    }
    

}
