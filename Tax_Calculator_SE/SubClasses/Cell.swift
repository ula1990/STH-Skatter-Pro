//
//  Cell.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 2018-02-27.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.darkGray
        label.textAlignment = .right
        return label
    }()
    
    lazy var nameOfCurrency: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.darkGray
        return label
    }()
    
    lazy var rateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    lazy var flagImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    fileprivate func setupViews(){
        
        flagImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        flagImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        flagImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        flagImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        nameOfCurrency.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameOfCurrency.leftAnchor.constraint(equalTo: flagImage.rightAnchor, constant: 10).isActive = true
        nameOfCurrency.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nameOfCurrency.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        rateLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        rateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        rateLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        rateLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        amountLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        amountLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        amountLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        amountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true

    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(amountLabel)
        addSubview(nameOfCurrency)
        addSubview(rateLabel)
        addSubview(flagImage)
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCellData(rate: Double, currencyTitle: String, amount: String){
        self.flagImage.image = UIImage(named: currencyTitle)
        nameOfCurrency.text = currencyTitle
        rateLabel.text = String(rate)
        amountLabel.text = amount
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
