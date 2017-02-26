//
//  SignInViewController.swift
//  myCoach
//
//  Created by Joao on 2/22/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var confirmPasswordTextField: CustomTextField!
    @IBOutlet weak var signInButton: CustomButton!
    
    @IBAction func signUpButton(_ sender: Any) {
        let hasEmail = inputIsFilled(textField: emailTextField)
        let hasPassword = inputIsFilled(textField: passwordTextField)
        let hasConfirmedPassword = inputIsFilled(textField: confirmPasswordTextField)
        let passwordMatched = confirmPasswordMatch()
        
        if hasEmail && hasPassword && hasConfirmedPassword && passwordMatched {
            sendDataToFirebase()
        }
    }
        
    public func goToView(viewIdentifier: String) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: viewIdentifier)
        self.present(viewController!, animated: true, completion: nil)
    }
    
    internal func sendDataToFirebase() {
        FIRAuth.auth()?.createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error == nil {
                print("You have successfully signed up")
                //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
//                self.present(vc!, animated: true, completion: nil)
                
            } else {
                self.showAlert(title: "Error", message: (error?.localizedDescription)!)
            }
        }
    }
    

    internal func showAlert(title: String, message: String) {
    
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    internal func confirmPasswordMatch() -> Bool {
        
        var passwordMatch = false
        
        if passwordTextField.text == confirmPasswordTextField.text {
            passwordMatch = true
            
        } else {
            showAlert(title: "Error", message: "Password and confirm password does not match")
        }
        
        return passwordMatch
    }
    
    internal func inputIsFilled(textField: CustomTextField) -> Bool {
        var isEmpty = true
        
        if textField.text == "" {
            showAlert(title: "Error", message: "Please enter with E-mail and Password")
            isEmpty = false
        }
        
        return isEmpty
    }
    
    internal func customizeUI() {
        emailTextField.addBottomBorder()
        passwordTextField.addBottomBorder()
        confirmPasswordTextField.addBottomBorder()
        emailTextField.setPlaceholder(text: "E-MAIL")
        passwordTextField.setPlaceholder(text: "PASSWORD")
        confirmPasswordTextField.setPlaceholder(text: "CONFIRM PASSWORD")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
