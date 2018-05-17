//
//  UpdateCompaniesData.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 17/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {
    func updateButtonImage(image1: UIImage,
                           image2: UIImage,
                           image3: UIImage,
                           image4: UIImage,
                           image5: UIImage,
                           image6: UIImage,
                           image7: UIImage
        ){
        firstCompanyBut.alpha = 0
        secondCompanyBut.alpha = 0
        thirdCompanyBut.alpha = 0
        fourthCompanyBut.alpha = 0
        fifthCompanyBut.alpha = 0
        sixthCompanyBut.alpha = 0
        seventhCompanyBut.alpha = 0
        
        self.firstCompanyBut.isHidden = false
        self.secondCompanyBut.isHidden = false
        self.thirdCompanyBut.isHidden = false
        self.fourthCompanyBut.isHidden = false
        self.fifthCompanyBut.isHidden = false
        self.sixthCompanyBut.isHidden = false
        self.seventhCompanyBut.isHidden = false

        UIView.animate(withDuration: 0.3, animations: {
            self.firstCompanyBut.alpha = 1
        }, completion: {(true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.secondCompanyBut.alpha = 1
            }, completion: {(true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.thirdCompanyBut.alpha = 1 }, completion: {(true) in
                        UIView.animate(withDuration: 0.3, animations: {
                            self.fourthCompanyBut.alpha = 1
                        }, completion: {(true) in
                            UIView.animate(withDuration: 0.3, animations: {
                                self.fifthCompanyBut.alpha = 1
                            }, completion: {(true) in
                                UIView.animate(withDuration: 0.3, animations: {
                                    self.sixthCompanyBut.alpha = 1
                                }, completion: {(true) in
                                    UIView.animate(withDuration: 0.3, animations: {
                                        self.seventhCompanyBut.alpha = 1
                                    }, completion: {(true) in })
                                })
                            })
                        })
                })
            })
            
        })
        
        self.firstCompanyBut.setBackgroundImage(image1, for: .normal)
        self.secondCompanyBut.setBackgroundImage(image2, for: .normal)
        self.thirdCompanyBut.setBackgroundImage(image3, for: .normal)
        self.fourthCompanyBut.setBackgroundImage(image4, for: .normal)
        self.fifthCompanyBut.setBackgroundImage(image5, for: .normal)
        self.sixthCompanyBut.setBackgroundImage(image6, for: .normal)
        self.seventhCompanyBut.setBackgroundImage(image7, for: .normal)
    }
    
     func updateButtonLink(firstLink: String, secondLink:String, thirdLink: String){
        if (Int(inputTextField.text!))! >= 35000 {
            openCareerUrl(urlStr: firstLink)
        }else if (Int(inputTextField.text!))! < 35000 && (Int(inputTextField.text!))! >= 24000{
            openCareerUrl(urlStr: secondLink)
        }else{ 
            openCareerUrl(urlStr: thirdLink)
        }
    }
    
    
    @objc func firstCompLink(){
        updateButtonLink(firstLink: "http://www.tradedoubler.com/en/careers-at-tradedoubler/current-vacancies/",
                         secondLink: "http://www.ikea.com/ms/en_JP/the_ikea_story/jobs_at_ikea/index.html",
                         thirdLink: "https://www.nordea.com/en/career/")
        
    }
    
    @objc func secondCompLink(){
        updateButtonLink(firstLink: "https://www.swedbank.com/work-with-us/job-openings/index.htm",
                         secondLink: "https://www.uber.com/en-SE/careers/",
                         thirdLink: "https://www.mcdonalds.com/se/sv-se/jobb/sok-jobb.html")
    }
    
    @objc func thirdCompLink() {
        updateButtonLink(firstLink: "https://www.spotifyjobs.com/",
                         secondLink: "https://www.hemkop.se/jobb",
                         thirdLink: "https://burgerking.se/jobb")
    }
    
    @objc func fourthCompLink() {
        updateButtonLink(firstLink: "https://xjobs.brassring.com/TGnewUI/Search/Home/Home?partnerid=25079&siteid=5171#home",
                         secondLink: "https://www.blocket.career/jobs",
                         thirdLink: "https://polisen.se/Aktuellt/Lediga-jobb/")
        
    }
    
    @objc func fifthCompLink() {
        updateButtonLink(firstLink: "https://careers.google.com/locations/",
                         secondLink: "https://www.ge.com/se/careers",
                         thirdLink: "https://www.uber.com/info/careers/eats/")
    }
    
    @objc func sixthCompLink() {
        updateButtonLink(firstLink: "https://careers.microsoft.com/",
                         secondLink: "https://saabgroup.com/career/vacancies/",
                         thirdLink: "https://career.hm.com/content/hmcareer/en_se/findjob.html")
    }
    
    
    @objc func seventhCompLink() {
        updateButtonLink(firstLink: "https://careers.microsoft.com/skype",
                         secondLink: "https://www.sasgroup.net/en/category/career/",
                         thirdLink: "https://www.circlek.se/sv_SE/pg1334072537742/privat/Jobba-hos-oss/circlek-lediga-jobb.html")
    }
    
    func updateCompaniesIcons() {
        let amount = (Int(inputTextField.text!))!
        if amount >= 35000 {
            updateButtonImage(image1: #imageLiteral(resourceName: "tradedoubler") , image2: #imageLiteral(resourceName: "swedbank"), image3: #imageLiteral(resourceName: "spotift"), image4: #imageLiteral(resourceName: "volvo"), image5: #imageLiteral(resourceName: "google"), image6: #imageLiteral(resourceName: "microsoft") , image7: #imageLiteral(resourceName: "skype"))
        }else if amount < 35000 && amount >= 24000 {
            updateButtonImage(image1: #imageLiteral(resourceName: "ikea"), image2: #imageLiteral(resourceName: "uber") , image3: #imageLiteral(resourceName: "hemkop"), image4: #imageLiteral(resourceName: "blocket"), image5: #imageLiteral(resourceName: "ge"), image6: #imageLiteral(resourceName: "saab"), image7: #imageLiteral(resourceName: "saas"))
        }else if amount < 24000 && amount >= 1{
            updateButtonImage(image1: #imageLiteral(resourceName: "nordea"), image2: #imageLiteral(resourceName: "mc") , image3: #imageLiteral(resourceName: "bk"), image4: #imageLiteral(resourceName: "polisen"), image5: #imageLiteral(resourceName: "uber_eats"), image6: #imageLiteral(resourceName: "hm"), image7: #imageLiteral(resourceName: "cirklek") )
        }else{
            hideCompButtons()
        }
    }
    
    
}
