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
    
    override func viewDidDisappear(_ animated: Bool) {
        loginView?.signInButton.configuration?.showsActivityIndicator = false
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension LoginViewController: LoginViewProtocol {
    func actionSignInButton() {
        let containerOnboard = OnboardingContainerViewController()
        let dummy = DummyViewController()
        loginView?.errorMessageLabel.isHidden = true
        
       
        
        
        guard let username = loginView?.userNameTextField.text, let password = loginView?.passwordTextField.text else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
//        if username.isEmpty || password.isEmpty {
//            configErroMessageLabel(message: "Username / Password cannot be blank")
//        }
        
        if username == "" && password == "" {
            loginView?.signInButton.configuration?.showsActivityIndicator = true
            if LocalState.hasOnboarded {
                self.navigationController?.pushViewController(dummy, animated: true)
            } else {
                self.navigationController?.pushViewController(containerOnboard, animated: true)
            }
      
        } else {
            configErroMessageLabel(message: "Incorrect Username / Password")
        }
    }
    
    private func configErroMessageLabel(message:String) {
        loginView?.errorMessageLabel.isHidden = false
        loginView?.errorMessageLabel.text = message
    }
    
}
