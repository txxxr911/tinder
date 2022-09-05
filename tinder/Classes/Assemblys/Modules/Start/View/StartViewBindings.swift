//
//  StartViewBindings.swift
//  tinder
//
//  Created by Victor on 05.09.2022.
//

import Foundation
import UIKit

extension StartViewController {
    func bind() {
        bindAgreementTextView()
        bindLoginButton()
        bindCreateAccountButton()
    }
    
    
    func bindAgreementTextView() {
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 5
        let attributes = [NSAttributedString.Key.paragraphStyle : style]
        
        let attributedString = NSMutableAttributedString(string: "Нажимая \"Создать аккаунт\" или \"Войти\", вы соглашаетесь с Условиями. Узнайте, как мы обрабатываем Ваши данные, ознакомившись с Политикой Конфиденциальности и Политикой в отношении файлов cookie.", attributes: attributes)
        
        let termsUrl = URL(string: "https://policies.tinder.com/terms/intl/ru")!
        let confidentialPolitics = URL(string: "https://policies.tinder.com/privacy/intl/ru")!
        let cookiePolitics = URL(string: "https://policies.tinder.com/cookie-policy/intl/ru")!
        
        attributedString.setAttributes([.link: termsUrl], range: NSMakeRange(56, 11))
        attributedString.setAttributes([.link:confidentialPolitics ], range: NSMakeRange(124, 30))
        attributedString.setAttributes([.link:cookiePolitics ], range: NSMakeRange(155, 38))
        
        agreementTextView.attributedText = attributedString
        
        
        agreementTextView.isUserInteractionEnabled = true
        agreementTextView.isEditable = false
        agreementTextView.textAlignment = .center
        agreementTextView.textColor = .white
        agreementTextView.font = UIFont(name: "Rockwell", size: 10)
        agreementTextView.backgroundColor = .clear
        agreementTextView.dataDetectorTypes = .link
        
        agreementTextView.linkTextAttributes = [
            .foregroundColor: UIColor.white,
            .underlineStyle: NSUnderlineStyle.single.rawValue
            
        ]
        
        
    }
    
    func bindCreateAccountButton() {
        
    }
    
    func bindLoginButton() {
        
    }
}
