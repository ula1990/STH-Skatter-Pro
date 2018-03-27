//
//  SecondViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 7/11/17.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit
import MessageUI
import AVFoundation
import StoreKit

@objc class SecondViewController: UIViewController, MFMailComposeViewControllerDelegate {

    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var aboutLbl: UILabel!
    @IBOutlet weak var createdlbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var switchLang: UISwitch!
    @IBOutlet weak var flagLbl: UILabel!
    
    let defaults = UserDefaults.standard
    let aboutLb = "aboutLb"
    let createdLb = "createdLb"
    let nameLb = "nameLb"
    let textLb = "textLb"
    let switchLan = "switchLan"

    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "Back", sender: self.navigationController)
    }
    
    //FacebookButton
    
    @IBAction func facebookButton(_ sender: Any) {
        
        clickSound()
       openButtonUrl(urlStr: "https://www.facebook.com/sthtaxes")
        
    }
    
  //Twitter Button
    @IBAction func twitterButton(_ sender: Any) {
        
        clickSound()
        openButtonUrl(urlStr: "https://twitter.com/TaxesSth")
    }
    
    //Function to open URL
    
    func openButtonUrl(urlStr:String!) {
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        
        clickSound()
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
    
        func configureMailController()-> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            mailComposerVC.setToRecipients(["uladzislau.daratsiuk@gmail.com"])
            mailComposerVC.setSubject("Hi Developer ")
            mailComposerVC.setMessageBody("Hi Developer,", isHTML: false)
            
            return mailComposerVC
        }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil )
    }
        
    @IBAction func tutorialFromAbout(_ sender: Any) {
        clickSound()
        self.performSegue(withIdentifier: "TutorialAbout", sender: navigationController)
    }
    
    //CLICK SOUND FUNC
    
    func clickSound(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "click", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }catch {
            print(error)
        }
    }
    

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iconImageView = UIImageView(image: UIImage(named: "barTitle" ))
        self.navigationItem.titleView = iconImageView
     
    }
}
