//
//  MenuModel.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 18/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//
import UIKit

class MenuModel {
    var title: String?
    var icon: UIImage?
    var viewController: UIViewController?
    
    init(title: String?, icon: UIImage?, viewController: UIViewController?){
        self.title = title
        self.icon = icon
        self.viewController = viewController
    }
}
