//
//  OnboardingViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/19/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemMint
    }
    
    @IBAction func getStartedBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: K.Seque.showLoginSignupScreen, sender: nil)
    }
}
