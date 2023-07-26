//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 25/07/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let onboardingView = OnboardingView()
    let login = LoginViewController()
 
    override func loadView() {
        self.view = onboardingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.delegate(delegate: self)
        
    }
    
    init(imageOnboarding: String , textOnboarding: String) {
        super.init(nibName: nil, bundle: nil)
        onboardingView.imageView.image = UIImage(named: imageOnboarding)
        onboardingView.titleTextLabel.text = textOnboarding
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    func actionCloseButton() {
        print("close")
    }
    
    func actionDoneButton() {
        let dummy = DummyViewController()
        navigationController?.pushViewController(dummy, animated: true)
    }
    
}
