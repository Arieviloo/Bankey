//
//  AppDelegate.swift
//  Bankey
//
//  Created by Jadië Oliveira on 24/07/23.
//

import UIKit

let appColor: UIColor = .systemTeal
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())
//        window?.rootViewController = OnboardingContainerViewController()
        return true
        
    }


}

