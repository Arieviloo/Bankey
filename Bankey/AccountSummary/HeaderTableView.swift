//
//  HeaderTableView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 11/09/23.
//

import UIKit

class HeaderTableView: UIView {
    
    
    lazy var headerTableView: UIView = {
         $0.translatesAutoresizingMaskIntoConstraints = false
         $0.backgroundColor = .green
         return $0
     }(UIView())
    
    lazy var titleTableLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "title"
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerTableView)
        headerTableView.addSubview(titleTableLabel)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            headerTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerTableView.heightAnchor.constraint(equalToConstant: 200),
            
            titleTableLabel.centerYAnchor.constraint(equalTo: headerTableView.centerYAnchor)
        ])
    }
    
}
