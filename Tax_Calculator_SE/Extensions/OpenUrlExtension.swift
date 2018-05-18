//
//  OpenUrlExtension.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 18/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension AboutVC {
    
    func openButtonUrl(urlStr:String!) {
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
}
