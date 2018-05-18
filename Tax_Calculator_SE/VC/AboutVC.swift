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
        label.font = UIFont.systemFont(ofSize: 16)
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
        text.font = UIFont.systemFont(ofSize: 15)
        text.textColor = UIColor.black
        text.textAlignment = .center
        text.text = "Application currencies rates based on historical foreign exchange (Forex) rates published by the European Central Bank.Data regarding rates updating each time when you online, to make sure that you have last rates for this day"
        return text
    }()
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
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
    
    
    fileprivate func setupView(){
        
        developerInfoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        developerInfoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        developerInfoView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        developerInfoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        developerInfoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        
        
        developerInfoLabel.centerXAnchor.constraint(equalTo: developerInfoView.centerXAnchor).isActive = true
        developerInfoLabel.centerYAnchor.constraint(equalTo: developerInfoView.centerYAnchor).isActive = true
        developerInfoLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        developerInfoLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        textInfoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textInfoView.topAnchor.constraint(equalTo: developerInfoView.bottomAnchor, constant: 30).isActive = true
        textInfoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        textInfoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        textInfoView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        
        infoText.centerXAnchor.constraint(equalTo: textInfoView.centerXAnchor).isActive = true
        infoText.centerYAnchor.constraint(equalTo: textInfoView.centerYAnchor).isActive = true
        infoText.topAnchor.constraint(equalTo: textInfoView.topAnchor, constant: 20).isActive = true
        infoText.rightAnchor.constraint(equalTo: textInfoView.rightAnchor, constant: -15).isActive = true
        infoText.leftAnchor.constraint(equalTo: textInfoView.leftAnchor, constant: 15).isActive = true
        infoText.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        emailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailButton.topAnchor.constraint(equalTo: textInfoView.bottomAnchor, constant: 60).isActive = true
        emailButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        emailButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        rateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rateButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 30).isActive = true
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
    
    fileprivate func setupNavBar() {
        navigationItem.title = "About"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleBack))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setupView()
        view.backgroundColor = UIColor.white
        setupNavBar()
    }

    @objc fileprivate func handleBack(){
        let main = UINavigationController(rootViewController: MainVC())
        self.present(main, animated: true, completion: nil)
    }

}
