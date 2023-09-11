//
//  AccountSummaryController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 05/09/23.
//

import UIKit

class AccountSummaryViewController: UIViewController {
    
    let games = [
        ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"],
        ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"],
        ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"],
        ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"],
        ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"],
    ]
    
    private var accountSummaryView: AccountSummaryView?
    
    override func loadView() {
        accountSummaryView = AccountSummaryView()
        view = accountSummaryView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountSummaryView?.configProtocolTableView(delegate: self, dataSource: self)
        
//        title = "test"
//        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isHidden = true
    }
    
   
}

extension AccountSummaryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        games.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = UITableViewCell()
        cel.textLabel?.text = games[indexPath.section][indexPath.row]
        
        return cel
    }
   
    
}

