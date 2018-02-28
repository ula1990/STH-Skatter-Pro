//
//  Cell.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 2018-02-27.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var nameOfCurrency: UILabel!
    @IBOutlet weak var rate: UILabel!
    
    
    //FUNCTION TO FLAG IMAGE
    
    func flagOfCurrency(image: String){
        
        self.flagImage.image = UIImage(named: image)
        self.flagImage.layer.shadowOpacity = 2
        
    }
    
    func rateInfo(Rate: Double){
        rate.text = String(Rate)
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
