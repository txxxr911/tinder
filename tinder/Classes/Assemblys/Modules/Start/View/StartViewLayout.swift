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
    
}
