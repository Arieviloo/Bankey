//
//  OnboardingView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 25/07/23.
//

import UIKit

protocol OnboardingViewProtocol:class {
    func actionCloseButton()
    func actionDoneButton()
}

class OnboardingView: UIView {
    
    private weak var delegate:OnboardingViewProtocol?
    
    func delegate(delegate:OnboardingViewProtocol) {
        self.delegate = delegate
    }
    
    lazy var closeButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Close", for: .normal)
        $0.addTarget(self, action: #selector(tappedClose), for: .touchDown)
        return $0
    }(UIButton())
    
    lazy var containerStackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 20
        return $0
    }(UIStackView())
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    lazy var titleTextLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = ""
        $0.textAlignment = .center
        $0.numberOfLines = 0
        return $0
    }(UILabel())

    lazy var doneButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Done", for: .normal)
        $0.addTarget(self, action: #selector(tappedDoneButton), for: .touchDown)
        return $0
    }(UIButton())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        containerStackView.addArrangedSubview(imageView)
        containerStackView.addArrangedSubview(titleTextLabel)
        addSubview(containerStackView)
        addSubview(closeButton)
        addSubview(doneButton)
        
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedClose() {
        self.delegate?.actionCloseButton()
    }
    
    @objc func tappedDoneButton() {
        self.delegate?.actionDoneButton()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            //            imageView.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 30),
            //            imageView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            //            trailingAnchor.constraint(equalToSystemSpacingAfter: imageView.trailingAnchor, multiplier: 1),
            //
            //            titleTextLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.bottomAnchor, multiplier: 2),
            //            titleTextLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            //            titleTextLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            
            closeButton.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 1),
            closeButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: containerStackView.trailingAnchor, multiplier: 1),
            
            
//            nextButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
//            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
//
//            backButton.bottomAnchor.constraint(equalTo: nextButton.bottomAnchor),
//            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            
            doneButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            doneButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            

        ])
    }
}
