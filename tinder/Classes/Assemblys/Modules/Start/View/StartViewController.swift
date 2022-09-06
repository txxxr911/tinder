//
//  StartViewController.swift
//  tinder
//
//  Created by Victor on 05.09.2022
//  
//

import UIKit


class StartViewController: UIViewController, StartViewInput {
    var output: StartViewOutput!
    
    var background = UIImageView()
    var logo = UIImageView()
    var agreementTextView = UITextView()
    var createAccountButton = UIButton()
    var loginButton = UIButton()
    var signInWithAppleButton = UIButton()
    var signInWithFacebookButton = UIButton()
    var signInWithNumberOfPhoneButton = UIButton()
    var troublesButton = UIButton()
    
    
    var loginTroublesLabel = UILabel()
    
    override func viewDidLoad() {
        bind()
        super.viewDidLoad()
        output.viewDidLoad()
        
    }
    
    
    @objc func loginButtonPressed() {
        animateLogo()
    }
    
    @objc func signInWithAppleButtonPressed() {
        output.signInWithAppleButtonPressed()
    }
    
    @objc func signInWithFacebookButtonPressed() {
        output.signInWithFacebookButtonPressed()
    }
    
    @objc func signInWithNumberOfPhoneButtonPressed() {
        output.signInWithNumberOfPhoneButtonPressed()
    }
    
//    func loginButtonPressed() {
//
//    }
    
    func signUpButtonPressed() {
        
    }
    
    func showSignInWithApple() {
        signInWithAppleButton.isHidden = false
    }
    
    func showSignInWithFacebook() {
        signInWithFacebookButton.isHidden = false
    }
    
    func showSignInWithNumberOfPhone() {
        signInWithNumberOfPhoneButton.isHidden = false
    }
    
    func showTroublesButton() {
        
    }
    
    func showLoginsButtons() {
        UIView.animate(withDuration: 2, delay: 0) {
            
            self.showSignInWithApple()
            self.showSignInWithFacebook()
            self.showSignInWithNumberOfPhone()
            self.signInWithNumberOfPhoneButton.center = CGPoint(x: self.signInWithNumberOfPhoneButton.center.x, y:  self.signInWithNumberOfPhoneButton.center.y + 30)
            self.signInWithFacebookButton.center = CGPoint(x: self.signInWithFacebookButton.center.x, y:  self.signInWithFacebookButton.center.y + 30)
            self.signInWithAppleButton.center = CGPoint(x: self.signInWithAppleButton.center.x, y:  self.signInWithAppleButton.center.y + 30)
            self.showTroublesButton()
        }
        
    }
}

// MARK: - Configure
extension StartViewController {
    
}

// MARK: View Input
extension StartViewController {
    func set(title: String) {
    }
    
    func animateLogo() {
        UIView.animate(withDuration: 0.5) {
            self.logo.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 70)
            self.agreementTextView.center = CGPoint(x: self.agreementTextView.center.x, y: self.agreementTextView.center.y - 70)
            self.loginButton.isHidden = true
            self.createAccountButton.isHidden = true
            self.showLoginsButtons()
        }
        
    }
}
                       
// MARK: Button Action
extension StartViewController {
    
}
