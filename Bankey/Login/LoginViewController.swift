//
//  ViewController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 24/07/23.
//

import UIKit

class LoginViewController: UIViewController {

    var loginView: LoginView?
    
    override func loadView() {
        self.loginView = LoginView()
        self.view = loginView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.delegate(delegate: self)
        loginView?.delegateTextField(delegate: self)
      
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension LoginViewController: LoginViewProtocol {
    func actionSignInButton() {
        loginView?.errorMessageLabel.isHidden = true
        
        guard let username = loginView?.userNameTextField.text, let password = loginView?.passwordTextField.text else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
        if username.isEmpty || password.isEmpty {
            configErroMessageLabel(message: "Username / Password cannot be blank")
        }
        
        if username == "Jadie" && password == "1234" {
            loginView?.signInButton.configuration?.showsActivityIndicator = true
        } else {
            configErroMessageLabel(message: "Incorrect Username / Password")
        }
    }
    
    private func configErroMessageLabel(message:String) {
        loginView?.errorMessageLabel.isHidden = false
        loginView?.errorMessageLabel.text = message
    }
    
    
}
