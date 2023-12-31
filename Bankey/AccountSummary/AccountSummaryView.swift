//
//  AccountSummaryView.swift
//  Bankey
//
//  Created by Jadië Oliveira on 05/09/23.
//

import UIKit

class AccountSummaryView: UIView {
    
   lazy var listTableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITableView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        configAddView()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configAddView() {
        addSubview(listTableView)
        
        let header = HeaderTableView()
        var size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        size.width = UIScreen.main.bounds.width
        size.height = 200
        header.frame.size = size
        listTableView.tableHeaderView = header
        
    }
    
    
    public func configProtocolTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        listTableView.delegate = delegate
        listTableView.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            listTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            listTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            listTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            listTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            
            
        ])
    }
}
