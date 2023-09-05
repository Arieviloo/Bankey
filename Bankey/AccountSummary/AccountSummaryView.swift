//
//  AccountSummaryView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 05/09/23.
//

import UIKit

class AccountSummaryView: UIView {
    
    lazy var containerStackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Welcome"
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        configAddView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configAddView() {
        addSubview(containerStackView)
        containerStackView.addArrangedSubview(titleLabel)
      
        
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
