//
//  AccountSummaryController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 05/09/23.
//

import UIKit

class AccountSummaryViewController: UIViewController {
    
    private var accountSummaryView: AccountSummaryView?
    
    override func loadView() {
        accountSummaryView = AccountSummaryView()
        view = accountSummaryView
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
