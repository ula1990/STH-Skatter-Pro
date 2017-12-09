//
//  SecondViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 7/11/17.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit
import MessageUI

@objc class SecondViewController: UIViewController, MFMailComposeViewControllerDelegate {


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
        
       openButtonUrl(urlStr: "https://www.facebook.com/sthtaxes")
        
    }
    
    
  //Twitter Button
    @IBAction func twitterButton(_ sender: Any) {
        
        openButtonUrl(urlStr: "https://twitter.com/TaxesSth")
    }
    
    //Function to open URL
    
    func openButtonUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }
    
    
    @IBAction func sendEmail(_ sender: Any) {
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
        self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
        showMailError()}
            }
    
        func configureMailController()-> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            mailComposerVC.setToRecipients(["uladzislau.daratsiuk@gmail.com"])
            mailComposerVC.setSubject("Hi STH Taxes Team ")
            mailComposerVC.setMessageBody("Hi Team,", isHTML: false)
            
            return mailComposerVC
        }
        
    func showMailError(){
    
        let sendMailErrorAlert = UIAlertController (title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title:"OK",style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil )
    }
        
        

    override var prefersStatusBarHidden: Bool
    {
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
