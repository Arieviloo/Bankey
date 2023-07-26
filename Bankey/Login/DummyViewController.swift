//
//  DummyViewController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 26/07/23.
//

import UIKit


protocol DummyViewControllerProtocol {
    func actionGetOutButton()
}

class DummyViewController: UIViewController {
    
    var delegate: DummyViewControllerProtocol?
    
    func delegate(delegate:DummyViewControllerProtocol) {
        self.delegate = delegate
    }
    
    var getOutButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Sair", for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.configuration = .filled()
        $0.addTarget(self, action: #selector(tappedGetOutButton), for: .touchDown)
        return $0
    }(UIButton())
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        view.addSubview(getOutButton)
        
        NSLayoutConstraint.activate([
            getOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getOutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            getOutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            getOutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func tappedGetOutButton() {
        LocalState.hasOnboarded = true
        navigationController?.popToRootViewController(animated: true)
    }
    
 
}
