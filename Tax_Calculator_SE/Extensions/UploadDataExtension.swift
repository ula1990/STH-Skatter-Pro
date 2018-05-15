//
//  UploadDataExtension.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 15/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {
    
    func getCurrencyRates (nameOfCurrency: String?){
        receivedRates.removeAll()
        receivedTitle.removeAll()
        let url = URL(string: "https://api.fixer.io/latest?base=" + nameOfCurrency!)
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            DispatchQueue.main.async {
                if error != nil
                {
                    if self.justOnce{
                        Alert.showBasic(title: "No Internet", msg: "Possible you are working in offline mode and rates information can be old. Please check connection.", vc: self)
                        self.justOnce = false
                        
                    }
                    self.offlineModeCalculation()
                    
                }
                else{
                    if let content = data
                    {
                        do{
                            let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            
                            /*      if let date = myJson["date"] as? NSString
                             {
                             self.lastUpdateLabel.text = "Last update: " + (date as String)
                             
                             }
                             
                             */
                            if let rates = myJson["rates"] as? NSDictionary
                            {
                                
                                for (key,value ) in rates
                                {
                                    self.receivedTitle.append((key as? String)!)
                                    self.receivedRates.append((value as? Double)!)
                                    self.calculateRates()
                                    self.justOnce = true
                                }
                            }
                        }
                        catch{
                            self.getCurrencyRates(nameOfCurrency: "SEK")
                        }
                    }
                }
                self.currenciesTable.reloadData()
            }
        }
        task.resume()
    }
}
