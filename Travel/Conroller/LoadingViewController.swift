//
//  LoadingViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/17/23.
//

import UIKit

class LoadingViewController: UIViewController {
    private let isUserLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showInitialView()
        }
    }
    
    private func setupViews() {
        view.backgroundColor = .systemMint
    }
    
    private func showInitialView() {
        // if user logged in, show tab bar controller
        // else, show onboarding controller
        if isUserLoggedIn {
            let mainTabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBarController")
            
            if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
               let window = sceneDelegate.window {
                window.rootViewController = mainTabBarController
            }
        } else {
            performSegue(withIdentifier: "showOnboarding", sender: nil)
        }
        
    }
}
