//
//  LoginView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 24/07/23.
//

import UIKit

protocol LoginViewProtocol {
    func actionSignInButton()
}

class LoginView: UIView {
    
    var delegate: LoginViewProtocol?
    
    func delegate(delegate:LoginViewProtocol) {
        self.delegate = delegate
    }
    
    var containerLoginStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 8
        $0.backgroundColor = .secondarySystemBackground
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        return $0
    }(UIStackView())
    
    var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Bankey"
        $0.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return $0
    }(UILabel())
    
    var subTitleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Your premium source for all thing banking!"
        $0.font = UIFont.systemFont(ofSize: 28)
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 0
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    var userNameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "UserName"
        return $0
    }(UITextField())
    
    var dividerView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .secondarySystemFill
        return $0
    }(UIView())
    
    var passwordTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Password"
        $0.isSecureTextEntry = true
        return $0
    }(UITextField())
    
    var signInButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.configuration = .filled()
        $0.configuration?.imagePadding = 8
        $0.setTitle("Sign In", for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.addTarget(self, action: #selector(tappedSignIn), for: .touchDown)
        return $0
    }(UIButton())
    
    var errorMessageLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        $0.textColor = .systemRed
        $0.isHidden = true
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(containerLoginStack)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        containerLoginStack.addArrangedSubview(userNameTextField)
        containerLoginStack.addArrangedSubview(dividerView)
        containerLoginStack.addArrangedSubview(passwordTextField)
        addSubview(signInButton)
        addSubview(errorMessageLabel)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func delegateTextField(delegate: UITextFieldDelegate) {
        userNameTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    @objc private func tappedSignIn() {
        self.delegate?.actionSignInButton()
    }
    
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalToSystemSpacingBelow: subTitleLabel.topAnchor, multiplier: -3),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subTitleLabel.bottomAnchor.constraint(equalTo: containerLoginStack.topAnchor, constant: -50),
            subTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            subTitleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            subTitleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            containerLoginStack.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerLoginStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerLoginStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerLoginStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            userNameTextField.heightAnchor.constraint(equalToConstant: 40),
            userNameTextField.leadingAnchor.constraint(equalTo: containerLoginStack.leadingAnchor, constant: 8),
            userNameTextField.trailingAnchor.constraint(equalTo: containerLoginStack.trailingAnchor, constant: -8),
            
            dividerView.heightAnchor.constraint(equalToConstant: 2),
            dividerView.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: userNameTextField.heightAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: userNameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: userNameTextField.trailingAnchor),
            
            signInButton.topAnchor.constraint(equalTo: containerLoginStack.bottomAnchor, constant: 20),
            signInButton.leadingAnchor.constraint(equalTo: containerLoginStack.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: containerLoginStack.trailingAnchor),
            
            errorMessageLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 5),
            errorMessageLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            
        ])
    }
    
}
