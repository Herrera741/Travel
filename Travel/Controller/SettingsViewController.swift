//
//  SettingsViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/17/23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemPink
    }
    
    @IBAction func logoutBtnTapped(_ sender: UIBarButtonItem) {
        let onboardingViewController = UIStoryboard(name: K.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: K.StoryboardID.onboardingViewController)
        
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = onboardingViewController
            
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
        
        
    }
}
