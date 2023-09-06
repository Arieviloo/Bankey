//
//  AccountSummaryController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 05/09/23.
//

import UIKit

class AccountSummaryViewController: UIViewController {
    
    let games = ["Pacman", "Mario", "Teenage Mutant Ninja Turtles"]
    
    private var accountSummaryView: AccountSummaryView?
    
    override func loadView() {
        accountSummaryView = AccountSummaryView()
        view = accountSummaryView
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        accountSummaryView?.configProtocolTableView(delegate: self, dataSource: self)

    }
}

extension AccountSummaryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = UITableViewCell()
        cel.textLabel?.text = games[indexPath.row]
        
        return cel
    }
}

