//
//  SecondViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 7/11/17.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit
import MessageUI
import StoreKit

@objc class AboutVC: UIViewController, MFMailComposeViewControllerDelegate {

    lazy var developerInfoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        return view
    }()

    lazy var developerInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 2
        label.text = "Devloped by Uladzislau Daratsiuk"
        return label
    }()
    
    lazy var textInfoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        return view
    }()
    
    lazy var infoText: UITextView = {
       let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 16)
        text.textColor = UIColor.black
        text.text = "Application currencies rates based on historical foreign exchange (Forex) rates published by the European Central Bank."
        return text
    }()
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(named: "email"), for: .normal)
        button.addTarget(self, action: #selector(sendEmailButton), for: .touchUpInside)
        return button
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.addTarget(self, action: #selector(openFacebookButton), for: .touchUpInside)
        return button
    }()
    
    lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.addTarget(self, action: #selector(openTwitterButton), for: .touchUpInside)
        return button
    }()
    
    lazy var rateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(named: "rate"), for: .normal)
        button.addTarget(self, action: #selector(makeRateButton), for: .touchUpInside)
        return button
    }()

    
    
    @objc fileprivate func openFacebookButton() {
       openButtonUrl(urlStr: "https://www.facebook.com/sthtaxes")
    }
    
    @objc fileprivate func openTwitterButton() {
        openButtonUrl(urlStr: "https://twitter.com/TaxesSth")
    }
    
    
    @objc fileprivate func sendEmailButton() {
        
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
        self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
            Alert.showBasic(title: "Could not send email", msg: "Your device could not send email", vc: self ) }
            }
    
    @objc fileprivate func makeRateButton() {
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            Alert.showBasic(title: "Option not available", msg: "Minimum requirements for this function,that's iOS 10.3. Please update your device", vc: self)
        }
    }
    
    fileprivate   func configureMailController()-> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            mailComposerVC.setToRecipients(["uladzislau.daratsiuk@gmail.com"])
            mailComposerVC.setSubject("Hi Developer ")
            mailComposerVC.setMessageBody("Hi Developer,", isHTML: false)
            
            return mailComposerVC
        }
    
    internal func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil )
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    fileprivate func setupView(){
        
        developerInfoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        developerInfoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        developerInfoView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        developerInfoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        developerInfoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        
        
        developerInfoLabel.centerXAnchor.constraint(equalTo: developerInfoView.centerXAnchor).isActive = true
        developerInfoLabel.centerYAnchor.constraint(equalTo: developerInfoView.centerYAnchor).isActive = true
        developerInfoLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        developerInfoLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        textInfoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textInfoView.topAnchor.constraint(equalTo: developerInfoView.bottomAnchor, constant: 80).isActive = true
        textInfoView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textInfoView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        infoText.centerXAnchor.constraint(equalTo: textInfoView.centerXAnchor).isActive = true
        infoText.centerYAnchor.constraint(equalTo: textInfoView.centerYAnchor).isActive = true
        infoText.topAnchor.constraint(equalTo: developerInfoView.bottomAnchor, constant: 80).isActive = true
        infoText.widthAnchor.constraint(equalTo: textInfoView.widthAnchor).isActive = true
        infoText.heightAnchor.constraint(equalTo: textInfoView.heightAnchor).isActive = true
        
        
        emailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailButton.topAnchor.constraint(equalTo: textInfoView.bottomAnchor, constant: 40).isActive = true
        emailButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        emailButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        rateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rateButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 20).isActive = true
        rateButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        rateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        facebookButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 10).isActive = true
        facebookButton.rightAnchor.constraint(equalTo: emailButton.leftAnchor, constant: -40).isActive = true
        facebookButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        twitterButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 10).isActive = true
        twitterButton.leftAnchor.constraint(equalTo: emailButton.rightAnchor, constant: 40).isActive = true
        twitterButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        twitterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    fileprivate func addViews() {
        view.addSubview(developerInfoView)
        view.addSubview(textInfoView)
        view.addSubview(emailButton)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(rateButton)
        developerInfoView.addSubview(developerInfoLabel)
        textInfoView.addSubview(infoText)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setupView()
        view.backgroundColor = UIColor.white
    }
}
