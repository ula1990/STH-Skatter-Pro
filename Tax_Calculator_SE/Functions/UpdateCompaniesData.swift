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
}
