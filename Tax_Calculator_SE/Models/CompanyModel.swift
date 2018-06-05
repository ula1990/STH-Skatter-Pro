//
//  CompanieModel.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 04/06/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import Foundation
import UIKit

class Company : NSObject {
    let name: String?
    let image : UIImage?
    let link: String?
    
    init(name: String, image: UIImage, link: String){
        self.name = name
        self.image = image
        self.link = link
        
    }
    
}
