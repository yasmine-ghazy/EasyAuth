//
//  EasyAuthViewController.swift
//  EasyAuth
//
//  Created by Code95 on 10/23/18.
//

import UIKit

public protocol UIComponents {
    var containerView: UIView {get}
    var logoImageView:UIImageView {get}
    var appTitle:UILabel {get}
    var emailTextField:UITextField {get}
    var passwordTextField:UITextField {get}
    var forgetPasswordButton:UIButton {get}
    var loginButton:UIButton {get}
    var registerButton:UIButton {get}
    var delegate:EasyAuthLayoutDelegate {set get}
    var mainColor: UIColor {set get}
    var secondColor: UIColor {set get}
    var titleColor: UIColor {set get}
    var placeholderColor: UIColor {set get}
}

open class EasyAuthViewController: UIViewController {
    
    var easyAuthLayout:EasyAuthLayout!
    var easyAuthLayoutDelegate:EasyAuthLayoutDelegate!
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        easyAuthLayout = EasyAuthLayout(superView: self.view)
        easyAuthLayout.setupScollView(height: 750)
        easyAuthLayout.setupViews()
        easyAuthLayout.loginButton.addTarget(self, action: #selector(didSelectLogin), for: .touchUpInside)
        easyAuthLayout.forgetPasswordButton.addTarget(self, action: #selector(didSelectForgetPassword), for: .touchUpInside)
        easyAuthLayout.registerButton.addTarget(self, action: #selector(didSelectRegister), for: .touchUpInside)
        easyAuthLayout.facebookButton.addTarget(self, action: #selector(didSelectFacebook), for: .touchUpInside)
        easyAuthLayout.twitterButton.addTarget(self, action: #selector(didSelectTwitter), for: .touchUpInside)
        easyAuthLayout.instagramButton.addTarget(self, action: #selector(didSelectInstagram), for: .touchUpInside)
        easyAuthLayout.linkedinButton.addTarget(self, action: #selector(didSelectLinkidin), for: .touchUpInside)
        easyAuthLayout.googleButton.addTarget(self, action: #selector(didSelectGoogle), for: .touchUpInside)
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension EasyAuthViewController:UIComponents{

    public var delegate: EasyAuthLayoutDelegate {
        get {
            return self.easyAuthLayoutDelegate
        }
        set{
            self.easyAuthLayoutDelegate = newValue
        }
    }
    
    public var containerView: UIView {
        return easyAuthLayout.contentView
    }
    
    public var logoImageView: UIImageView {
        return easyAuthLayout.logoImageView
    }
    
    public var appTitle: UILabel {
        return easyAuthLayout.appTitleLabel
    }
    
    public var emailTextField: UITextField {
        return easyAuthLayout.emailTextField
    }
    
    public var passwordTextField: UITextField {
        return easyAuthLayout.passwordTextField
    }
    
    public var forgetPasswordButton: UIButton {
        return easyAuthLayout.forgetPasswordButton
    }
    
    public var loginButton: UIButton {
        return easyAuthLayout.loginButton
    }
    
    public var registerButton: UIButton {
        return easyAuthLayout.registerButton
    }
    
    public var mainColor: UIColor {
        get {
            return AppColors.mainColor
        }
        set {
            AppColors.mainColor = newValue
        }
    }
    
    public var secondColor: UIColor {
        get {
            return AppColors.secondColor
        }
        set {
            AppColors.mainColor = newValue
        }
    }
    
    public var titleColor: UIColor {
        get {
            return AppColors.titleColor
        }
        set {
            AppColors.titleColor = newValue
        }
    }
    public var placeholderColor: UIColor {
        get {
            return AppColors.placeHolderColor
        }
        set {
            AppColors.placeHolderColor = newValue
        }
    }
    
}
extension EasyAuthViewController{
    @objc func didSelectLogin(){
        easyAuthLayoutDelegate.didSelectLogin()
    }
    @objc func didSelectForgetPassword(){
        easyAuthLayoutDelegate.didSelectForgetPassword()
    }
    @objc func didSelectRegister(){
        easyAuthLayoutDelegate.didSelectRegister()
    }
    @objc func didSelectFacebook(){
        easyAuthLayoutDelegate.didSelectFacebook()
    }
    @objc func didSelectTwitter(){
        easyAuthLayoutDelegate.didSelectTwitter()
    }
    @objc func didSelectInstagram(){
        easyAuthLayoutDelegate.didSelectInstagram()
    }
    @objc func didSelectLinkidin(){
        easyAuthLayoutDelegate.didSelectLinkidin()
    }
    @objc func didSelectGoogle(){
        easyAuthLayoutDelegate.didSelectGoogle()
    }
}
