//
//  StartWindow.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-12-14.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class StartWindow: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var startBut: UIButton!

    @IBAction func startButton(_ sender: Any) {
        self.performSegue(withIdentifier: "start", sender: navigationController)
    }
    @IBAction func tutorialButton(_ sender: Any) {
        performSegue(withIdentifier: "tutorial", sender: navigationController)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        startBut.layer.shadowOpacity = 1
        startBut.layer.shadowRadius = 6
        nameLabel.alpha = 0
        startBut.alpha = 0
        let iconImageView = UIImageView(image: UIImage(named: "barTitle" ))
        self.navigationItem.titleView = iconImageView

        //CONFIGURE NAVIGATION CONTROLLER
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            UIView.animate(withDuration: 0.5, animations: {
                self.nameLabel.alpha = 0.9
            }, completion: {(true) in
                    UIView.animate(withDuration: 0.5, animations: {
                        self.startBut.alpha = 1
                }, completion: {(true) in })
                
            })
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
