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
        button.setImage(UIImage(named: "go"), for: .normal)
        button.addTarget(self, action: #selector(sendEmailButton), for: .touchUpInside)
        return button
    }()

    
    
    @IBAction func facebookButton(_ sender: Any) {

       openButtonUrl(urlStr: "https://www.facebook.com/sthtaxes")
        
    }
    
    @IBAction func twitterButton(_ sender: Any) {

        openButtonUrl(urlStr: "https://twitter.com/TaxesSth")
    }
    
    
    @objc fileprivate func sendEmailButton() {
        
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
        self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
            Alert.showBasic(title: "Could not send email", msg: "Your device could not send email", vc: self ) }
            }
    
    @IBAction func rateButton(_ sender: Any) {
        
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
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(developerInfoView)
        developerInfoView.addSubview(developerInfoLabel)
        view.addSubview(textInfoView)
        textInfoView.addSubview(infoText)
        view.backgroundColor = UIColor.white
        setupView()
        
    }
}
