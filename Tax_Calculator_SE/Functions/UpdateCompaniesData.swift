//
//  UpdateCompaniesData.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 17/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {

    @objc public func updateCompaniesIcons() {
        let amount = (Int(inputTextField.text!))!
        if amount >= 35000 {
            compCurrentArray = createFirstCompanyArray()
            reloadCompanyData()
        }else if amount < 35000 && amount >= 24000 {
            compCurrentArray = createSecondCompanyArray()
            reloadCompanyData()
        }else if amount < 24000 && amount >= 1{
            compCurrentArray = createThirdCompanyArray()
            reloadCompanyData()
        }else{
            compCurrentArray.removeAll()
            reloadCompanyData()
        }
    }
    
    @objc public func createThirdCompanyArray()->[Company]{
        var array: [Company] = []
        let item1 = Company(name: "Nordea", image: #imageLiteral(resourceName: "nordea"), link: "https://www.nordea.com/en/career/")
        let item2 = Company(name: "MC", image: #imageLiteral(resourceName: "mc"), link: "https://www.mcdonalds.com/se/sv-se/jobb/sok-jobb.html")
        let item3 = Company(name: "Burger King", image: #imageLiteral(resourceName: "bk") , link: "https://burgerking.se/jobb")
        let item4 = Company(name: "Polisen", image: #imageLiteral(resourceName: "polisen"), link: "https://polisen.se/Aktuellt/Lediga-jobb/")
        let item5 = Company(name: "Uber", image: #imageLiteral(resourceName: "uber_eats"), link: "https://www.uber.com/info/careers/eats/")
        let item6 = Company(name: "HM", image: #imageLiteral(resourceName: "hm"), link: "https://career.hm.com/content/hmcareer/en_se/findjob.html")
        let item7 = Company(name: "Circle", image: #imageLiteral(resourceName: "cirklek"), link: "https://www.circlek.se/sv_SE/pg1334072537742/privat/Jobba-hos-oss/circlek-lediga-jobb.html")
        
        array.append(item1)
        array.append(item2)
        array.append(item3)
        array.append(item4)
        array.append(item5)
        array.append(item6)
        array.append(item7)
        
        return array
    }
    
    @objc public func createSecondCompanyArray()->[Company]{
        var array: [Company] = []
        let item1 = Company(name: "Ikea", image: #imageLiteral(resourceName: "ikea"), link: "http://www.ikea.com/ms/en_JP/the_ikea_story/jobs_at_ikea/index.html")
        let item2 = Company(name: "Uber", image: #imageLiteral(resourceName: "uber"), link: "https://www.uber.com/en-SE/careers/")
        let item3 = Company(name: "Hemkop", image: #imageLiteral(resourceName: "hemkop"), link: "https://www.hemkop.se/jobb")
        let item4 = Company(name: "Blocket", image: #imageLiteral(resourceName: "blocket"), link: "https://www.blocket.career/jobs")
        let item5 = Company(name: "GE", image: #imageLiteral(resourceName: "ge"), link: "https://www.ge.com/se/careers")
        let item6 = Company(name: "Saab", image: #imageLiteral(resourceName: "saab"), link:  "https://saabgroup.com/career/vacancies/")
        let item7 = Company(name: "Saas", image: #imageLiteral(resourceName: "saas"), link: "https://www.sasgroup.net/en/category/career/")

        array.append(item1)
        array.append(item2)
        array.append(item3)
        array.append(item4)
        array.append(item5)
        array.append(item6)
        array.append(item7)
        
        return array
    }
    
    @objc public func createFirstCompanyArray()->[Company]{
        var array: [Company] = []
        let item1 = Company(name: "Tradedoubler", image: #imageLiteral(resourceName: "tradedoubler"), link: "http://www.tradedoubler.com/en/careers-at-tradedoubler/current-vacancies/")
        let item2 = Company(name: "Swedbank", image: #imageLiteral(resourceName: "swedbank"), link: "https://www.swedbank.com/work-with-us/job-openings/index.htm")
        let item3 = Company(name: "Spotify", image: #imageLiteral(resourceName: "spotift"), link: "https://www.spotifyjobs.com/")
        let item4 = Company(name: "Volvo", image: #imageLiteral(resourceName: "volvo"), link: "https://xjobs.brassring.com/TGnewUI/Search/Home/Home?partnerid=25079&siteid=5171#home")
        let item5 = Company(name: "Google", image: #imageLiteral(resourceName: "google"), link: "https://careers.google.com/locations/")
        let item6 = Company(name: "Microsoft", image: #imageLiteral(resourceName: "microsoft"), link: "https://careers.microsoft.com/")
        let item7 = Company(name: "Skype", image: #imageLiteral(resourceName: "skype"), link: "https://careers.microsoft.com/skype")
        
        array.append(item1)
        array.append(item2)
        array.append(item3)
        array.append(item4)
        array.append(item5)
        array.append(item6)
        array.append(item7)
    
        return array
    }
    
    
    public func reloadCompanyData(){
        UIView.transition(with: companyCollectionView, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.companyCollectionView.reloadData()
        }, completion: nil)
    }
    
    
}
