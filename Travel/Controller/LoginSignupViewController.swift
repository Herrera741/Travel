//
//  LoginViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/19/23.
//

import UIKit

class LoginSignupViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    private enum PageType {
        case login
        case signup
    }
    
    private var currentPageType: PageType = .login {
        didSet {
            setupViewsForPageType(pageType: currentPageType)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewsForPageType(pageType: .login)
    }
    
    private func setupViewsForPageType(pageType: PageType) {
        errorLabel.text = ""
        confirmPasswordTextField.isHidden = pageType == .login
        signupBtn.isHidden = pageType == .login
        forgetPasswordBtn.isHidden = pageType == .signup
        loginBtn.isHidden = pageType == .signup
    }
    
    @IBAction func forgetPasswordBtnTapped(_ sender: Any) {
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signup
    }
}
