//
//  MenuCell.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 17/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    lazy var menuLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkText
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        return label
    }()

    
    fileprivate func setupViews(){
        
        menuLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        menuLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        menuLabel.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        menuLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(menuLabel)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
