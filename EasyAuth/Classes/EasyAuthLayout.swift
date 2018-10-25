//
//  EasyAuthLayout.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import Foundation
import UIKit
import SnapKit
import Material
import Localize_Swift

class EasyAuthLayout: BaseLayout {

    init(superView:UIView) {
        super.init(superview: superView)
    }
    
    var contentView:UIView = {
       var view = UIView()
        view.backgroundColor = AppColors.mainColor
        return view
    }()
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        return scrollView
    }()
    lazy var topView:UIView = {
       var view = UIView()
        return view
    }()
    lazy var middleSatckView:UIStackView = {
        var stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()
    lazy var logoImageView:UIImageView = {
       var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    lazy var appTitleLabel:UILabel = {
       var label = UILabel()
        label.textColor = AppColors.secondColor
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        //label.backgroundColor = UIColor.gray
        return label
    }()
    lazy var emailTextField:ErrorTextField = {
       var textField = ErrorTextField()
        textField.textColor = AppColors.titleColor
        textField.placeholder = "Enter email,username or phone "
        textField.placeholderNormalColor = AppColors.secondColor
        textField.dividerColor = AppColors.secondColor
        return textField
    }()
    lazy var passwordTextField:ErrorTextField = {
        var textField = ErrorTextField()
        textField.textColor = AppColors.titleColor
        textField.placeholder = "password"
        textField.placeholderNormalColor = AppColors.secondColor
        textField.dividerColor = AppColors.secondColor
        textField.isSecureTextEntry = true
        return textField
    }()
    lazy var forgetPasswordButton:UIButton = {
       var button = UIButton()
        button.setTitle("Forget Password?", for: .normal)
        button.backgroundColor = UIColor.clear
        button.setTitleColor(AppColors.secondColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        if Localize.currentLanguage() == "en"{
            button.contentHorizontalAlignment = .right
        }else{
            button.contentHorizontalAlignment = .left
        }
        return button
    }()
    lazy var loginButton:UIButton = {
        var button = UIButton()
        button.AppButton(title: "LOGIN", backgroundColor: AppColors.secondColor, titleColor: AppColors.mainColor)
        return button
    }()

    lazy var registerView:UIView = {
       var view = UIView()
        return view
    }()
    lazy var haveAccountLabel:UILabel = {
        var label = UILabel()
        label.text = "You don't have account?"
        label.textColor = AppColors.secondColor
        label.font = UIFont.systemFont(ofSize: 16)
        if Localize.currentLanguage() == "en"{
            label.textAlignment = .left
        }else{
           label.textAlignment = .right
        }
        return label
    }()
    lazy var registerButton:UIButton = {
        var button = UIButton()
        button.setTitle("Register now", for: .normal)
        button.backgroundColor = UIColor.clear
        button.setTitleColor(AppColors.secondColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        if Localize.currentLanguage() == "en"{
            button.contentHorizontalAlignment = .left
        }else{
            button.contentHorizontalAlignment = .right
        }
        return button
    }()
    lazy var orLoginWithLabel:UILabel = {
       var label = UILabel()
        label.text = "ــــــــــــــــــ OR LOGIN WITH ــــــــــــــــــ "
        label.textColor = AppColors.secondColor
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    lazy var socialMediaStackView:UIStackView = {
       var stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    lazy var facebookButton:UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitleColor(AppColors.mainColor, for: .normal)
        button.setTitle("Fac", for: .normal)
        return button
       //return SocialButton(buttonImage: #imageLiteral(resourceName: "facebook"))
    }()
    lazy var instagramButton:UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitleColor(AppColors.mainColor, for: .normal)
        button.setTitle("Ins", for: .normal)
        return button
      // return SocialButton(buttonImage: #imageLiteral(resourceName: "instagram"))
    }()
    lazy var twitterButton:UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitleColor(AppColors.mainColor, for: .normal)
        button.setTitle("Twi", for: .normal)
        return button
      // return SocialButton(buttonImage: #imageLiteral(resourceName: "twitter"))
    }()
    lazy var linkedinButton:UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Lin", for: .normal)
        button.setTitleColor(AppColors.mainColor, for: .normal)
        return button
       // return SocialButton(buttonImage:#imageLiteral(resourceName: "linkedin"))
    }()
    lazy var googleButton:UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("goo", for: .normal)
        button.setTitleColor(AppColors.mainColor, for: .normal)
        return button
       //return SocialButton(buttonImage: #imageLiteral(resourceName: "google"))
    }()
    
    public func setupScollView(height: CGFloat) {
        self.superview.addSubview(self.scrollView)
        self.scrollView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.superview)
        }
        self.scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.scrollView)
            maker.width.equalTo(self.superview)
            maker.height.equalTo(height)
        }
    }
    
    func setupViews()  {
        
        contentView.addSubview(topView)
        contentView.addSubview(middleSatckView)
        contentView.addSubview(socialMediaStackView)
        
        topView.addSubview(logoImageView)
        topView.addSubview(appTitleLabel)
        
        middleSatckView.addArrangedSubview(emailTextField)
        middleSatckView.addArrangedSubview(passwordTextField)
        middleSatckView.addArrangedSubview(forgetPasswordButton)
        middleSatckView.addArrangedSubview(loginButton)
        middleSatckView.addArrangedSubview(registerView)
        middleSatckView.addArrangedSubview(orLoginWithLabel)
        
        socialMediaStackView.addArrangedSubview(facebookButton)
        socialMediaStackView.addArrangedSubview(instagramButton)
        socialMediaStackView.addArrangedSubview(twitterButton)
        socialMediaStackView.addArrangedSubview(linkedinButton)
        socialMediaStackView.addArrangedSubview(googleButton)
        
        registerView.addSubview(haveAccountLabel)
        registerView.addSubview(registerButton)
        
        topView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(50)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(UIScreen.main.bounds.height/4)
        }
        logoImageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        appTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(logoImageView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview()
        }
        middleSatckView.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        emailTextField.snp.makeConstraints { (make) in
            make.height.equalTo(50)
        }
        haveAccountLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(30)
            make.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.55)
        }
        registerButton.snp.makeConstraints { (make) in
            make.leading.equalTo(haveAccountLabel.snp.trailing)
            make.trailing.equalToSuperview().offset(-30)
            make.top.bottom.equalToSuperview()
        }
        socialMediaStackView.snp.makeConstraints { (make) in
            make.top.equalTo(middleSatckView.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(40)
        }
        facebookButton.snp.makeConstraints { (make) in
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
    }
}
