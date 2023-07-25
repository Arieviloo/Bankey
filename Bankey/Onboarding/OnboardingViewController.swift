//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Jadië Oliveira on 25/07/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    
 
    
//    override func loadView() {
//        let onboardingView = OnboardingView()
////        onboardingView = OnboardingView()
//        view = onboardingView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
print("1")
    }
    
    init(imageOnboarding: String , textOnboarding: String) {
        super.init(nibName: nil, bundle: nil)
        let onboardingView = OnboardingView()
        onboardingView.imageView.image = UIImage(named: imageOnboarding)
        onboardingView.titleTextLabel.text = textOnboarding
        
        self.view = onboardingView
        print("3")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
