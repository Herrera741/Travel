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
        PresenterManager.shared.show(vc: .onboarding)
    }
}
