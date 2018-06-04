//
//  ComapnyCell.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 04/06/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class ComapnyCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let companyIconImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 17.5
        return image
    }()
    
    
    func  setupView(){
        addSubview(companyIconImage)

        companyIconImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        companyIconImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        companyIconImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        companyIconImage.heightAnchor.constraint(equalToConstant: 35).isActive = true

    }
    
    func updateCellData(company: Company){
        companyIconImage.image = company.image

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
