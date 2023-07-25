//
//  OnboardingView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 25/07/23.
//

import UIKit

class OnboardingView: UIView {
    
    lazy var containerStackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 20
        return $0
    }(UIStackView())
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "delorean")
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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        containerStackView.addArrangedSubview(imageView)
        containerStackView.addArrangedSubview(titleTextLabel)
        addSubview(containerStackView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
            
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: containerStackView.trailingAnchor, multiplier: 1),
        
        ])
    }
}
