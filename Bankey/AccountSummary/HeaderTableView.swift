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
        $0.text = "Bankey"
        return $0
    }(UILabel())
    
    
    lazy var goodLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Good Morning"
        return $0
    }(UILabel())
    
    lazy var nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Enzo"
        return $0
    }(UILabel())
    
    lazy var dateLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "date"
        return $0
    }(UILabel())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerTableView)
        headerTableView.addSubview(titleTableLabel)
        headerTableView.addSubview(goodLabel)
        headerTableView.addSubview(nameLabel)
        headerTableView.addSubview(dateLabel)
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
            
            titleTableLabel.topAnchor.constraint(equalTo: headerTableView.topAnchor, constant: 10),
            titleTableLabel.leadingAnchor.constraint(equalTo: headerTableView.leadingAnchor, constant: 12),
            
            goodLabel.topAnchor.constraint(equalTo: titleTableLabel.bottomAnchor, constant: 20),
            goodLabel.leadingAnchor.constraint(equalTo: titleTableLabel.leadingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: goodLabel.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: titleTableLabel.leadingAnchor),
            
            dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            dateLabel.leadingAnchor.constraint(equalTo: titleTableLabel.leadingAnchor),
            
            
            
        ])
    }
    
}
