//
//  OfflineModeCalculation.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 15/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {

    func offlineModeCalculation(){
        self.receivedTitle = ["CNY", "PLN", "THB", "BGN", "AUD", "TRY", "ILS", "BRL", "DKK", "GBP", "RUB", "CHF", "ISK", "HRK", "MXN", "RON", "SGD", "EUR", "NOK", "HUF", "NZD", "USD", "MYR", "IDR", "KRW", "JPY", "INR", "PHP", "CZK", "HKD", "ZAR", "CAD"]
        self.receivedRates = [0.77383000000000002, 0.41514000000000001, 3.8416999999999999, 0.19472, 0.15640999999999999, 0.46375, 0.42845, 0.39682000000000001, 0.74133000000000004, 0.087434999999999999, 6.8638000000000003, 0.11479, 12.316000000000001, 0.74109000000000003, 2.2818000000000001, 0.46421000000000001, 0.16156000000000001, 0.099561999999999998, 0.95881000000000005, 31.222000000000001, 0.16772999999999999, 0.12266000000000001, 0.47954000000000002, 1676.0, 131.44, 13.102, 7.9452999999999996, 6.3655999999999997, 2.528, 0.95965, 1.4219999999999999, 0.15548999999999999]
        self.calculateRates()
    }
}