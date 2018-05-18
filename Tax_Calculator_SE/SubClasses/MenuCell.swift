//
//  MenuCell.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 17/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    lazy var menuIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 2
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.darkGray
        return image
    }()

    lazy var menuLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkText
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.black
        return label
    }()
  

    fileprivate func setupViews(){
        menuIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        menuIcon.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        menuIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        menuIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        menuLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        menuLabel.leftAnchor.constraint(equalTo: menuIcon.rightAnchor, constant: 15).isActive = true
        menuLabel.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        menuLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
    
    public func updateMenu(menuModel: MenuModel){
        menuIcon.image = menuModel.icon
        menuLabel.text = menuModel.title
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(menuIcon)
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
