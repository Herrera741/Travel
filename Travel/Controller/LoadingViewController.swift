//
//  LoadingViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/17/23.
//

import UIKit

class LoadingViewController: UIViewController {
    private let isUserLoggedIn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delay(durationInSeconds: 2.0) {
            self.showInitialView()
        }
    }
    
    private func showInitialView() {
        if isUserLoggedIn {
            let mainTabBarController = UIStoryboard(name: K.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: K.StoryboardID.mainTabBarController)
            
            if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
               let window = sceneDelegate.window {
                window.rootViewController = mainTabBarController
            }
        } else {
            performSegue(withIdentifier: K.Seque.showOnboardingScreen, sender: nil)
        }
        
    }
}
