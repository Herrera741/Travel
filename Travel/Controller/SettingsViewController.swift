//
//  SettingsViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/17/23.
//

import UIKit
import MBProgressHUD

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemPink
    }
    
    @IBAction func logoutBtnTapped(_ sender: UIBarButtonItem) {
        MBProgressHUD.showAdded(to: view, animated: true)
        delay(durationInSeconds: 0.5) {
            MBProgressHUD.hide(for: self.view, animated: true)
            PresenterManager.shared.show(vc: .onboarding)
        }
    }
}
