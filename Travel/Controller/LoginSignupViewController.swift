//
//  LoginViewController.swift
//  Travel
//
//  Created by Sergio Herrera on 2/19/23.
//

import UIKit
import MBProgressHUD

class LoginSignupViewController: UIViewController {
    
    weak var delegate: OnboardingDelegate?
    private let isLoginSuccessful = true
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
    
    private var errorMessage: String? {
        didSet {
            showErrorMessageIfNeeded(text: errorMessage)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewsForPageType(pageType: .login)
    }
    
    private func setupViewsForPageType(pageType: PageType) {
        errorLabel.text = nil
        confirmPasswordTextField.isHidden = pageType == .login
        signupBtn.isHidden = pageType == .login
        forgetPasswordBtn.isHidden = pageType == .signup
        loginBtn.isHidden = pageType == .signup
    }
    
    private func showErrorMessageIfNeeded(text: String?) {
        errorLabel.isHidden = text == nil
        errorLabel.text = text
    }
    
    @IBAction func forgetPasswordBtnTapped(_ sender: Any) {
    }
    
    @IBAction func signupBtnTapped(_ sender: Any) {
    }

    @IBAction func loginBtnTapped(_ sender: Any) {
        MBProgressHUD.showAdded(to: view, animated: true)
        delay(durationInSeconds: 2.0) {
            MBProgressHUD.hide(for: self.view, animated: true)
            if self.isLoginSuccessful {
                self.delegate?.showMainTabBarController()
            } else {
                self.errorMessage = "Your password is invalid. Please try again."
            }
        }
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signup
    }
}
