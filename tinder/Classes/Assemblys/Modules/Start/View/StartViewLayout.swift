//
//  StartViewLayout.swift
//  tinder
//
//  Created by Victor on 05.09.2022.
//

import Foundation
import UIKit
import SnapKit

extension StartViewController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layout()
        
    }
    
    func layout() {
        layoutBackground()
        layoutLogo()
        layoutAgreementTextView()
        layoutCreateAccountButton()
        layoutLoginButton()
        layoutSignInWithNumberOfPhoneButton()
        layoutSignInWithFacebookButton()
        layoutSignInWithAppleButton()
        
    }
    
    func layoutBackground() {
        view.addSubview(background)
        
        background.image = UIImage(named: "backgroundStart")
        
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func layoutLogo() {
        view.addSubview(logo)
        
        logo.image = UIImage(named: "logoLabel")
        
        logo.snp.makeConstraints { make in
            make.width.equalTo(180)
            make.height.equalTo(40)
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    
    
    func layoutAgreementTextView() {
        view.addSubview(agreementTextView)
        
        
        agreementTextView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logo).inset(50)
            make.height.equalTo(90)
            make.width.equalTo(280)
        }
    }
    
    func layoutCreateAccountButton() {
        view.addSubview(createAccountButton)
        
        createAccountButton.layer.backgroundColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        createAccountButton.layer.cornerRadius = 20
        createAccountButton.setTitle("Создать аккаунт", for: .normal)
        createAccountButton.setTitleColor(.black, for: .normal)
        createAccountButton.titleLabel?.font = UIFont(name: "System", size: 12)
        
        createAccountButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(290)
            make.height.equalTo(45)
            make.top.equalTo(agreementTextView).inset(100)
        }
    }
    
    func layoutLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.layer.backgroundColor = UIColor.clear.cgColor
        loginButton.layer.cornerRadius = 20
        loginButton.setTitle("Войти", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.borderWidth = 2
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(290)
            make.height.equalTo(45)
            make.top.equalTo(createAccountButton).inset(70)
            
        }
        
    }
    
    func layoutSignInWithAppleButton() {
        view.addSubview(signInWithAppleButton)
        signInWithAppleButton.isHidden = true
        
        signInWithAppleButton.layer.backgroundColor = UIColor.clear.cgColor
        signInWithAppleButton.layer.cornerRadius = 20
        signInWithAppleButton.setTitle("Войти c Apple", for: .normal)
        signInWithAppleButton.setTitleColor(.white, for: .normal)
        signInWithAppleButton.layer.borderColor = UIColor.white.cgColor
        signInWithAppleButton.layer.borderWidth = 2
        
        signInWithAppleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(290)
            make.height.equalTo(45)
            make.top.equalTo(signInWithFacebookButton).inset(-55)
            
        }
        
    }
    
    func layoutSignInWithFacebookButton() {
        view.addSubview(signInWithFacebookButton)
        signInWithFacebookButton.isHidden = true
        
        signInWithFacebookButton.layer.backgroundColor = UIColor.clear.cgColor
        signInWithFacebookButton.layer.cornerRadius = 20
        signInWithFacebookButton.setTitle("Войти c Facebook", for: .normal)
        signInWithFacebookButton.setTitleColor(.white, for: .normal)
        signInWithFacebookButton.layer.borderColor = UIColor.white.cgColor
        signInWithFacebookButton.layer.borderWidth = 2
        
        signInWithFacebookButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(290)
            make.height.equalTo(45)
            make.top.equalTo(createAccountButton).inset(15)
            
        }
    }
    
    func layoutSignInWithNumberOfPhoneButton() {
        view.addSubview(signInWithNumberOfPhoneButton)
        signInWithNumberOfPhoneButton.isHidden = true
        
        signInWithNumberOfPhoneButton.layer.backgroundColor = UIColor.clear.cgColor
        signInWithNumberOfPhoneButton.layer.cornerRadius = 20
        signInWithNumberOfPhoneButton.setTitle("Войти по номеру телефона", for: .normal)
        signInWithNumberOfPhoneButton.setTitleColor(.white, for: .normal)
        signInWithNumberOfPhoneButton.layer.borderColor = UIColor.white.cgColor
        signInWithNumberOfPhoneButton.layer.borderWidth = 2
        
        signInWithNumberOfPhoneButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(290)
            make.height.equalTo(45)
            make.top.equalTo(createAccountButton).inset(70)
            
        }
    }
    
}
