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
import FBSDKLoginKit

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
    
    @IBAction func facebookLogin(sender: UIButton) {
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email"], from: self) { (result, error) in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to get access token")
                return
            }
            
            let credential = FIRFacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            // Perform login by calling Firebase APIs
            FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    self.showAlert(title: "Login Error", message: (error.localizedDescription))
                    
                    return
                }
                
                // Present the main view
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "History") {
                    UIApplication.shared.keyWindow?.rootViewController = viewController
                    self.dismiss(animated: true, completion: nil)
                }
                
            })
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
