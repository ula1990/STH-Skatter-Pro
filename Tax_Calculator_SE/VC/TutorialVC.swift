//
//  TutorialViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-12-14.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController {

    @IBOutlet weak var textFirst: UILabel!
    @IBOutlet weak var textSecond: UILabel!
    @IBOutlet weak var textThird: UILabel!
    @IBOutlet weak var textFourth: UILabel!
    @IBOutlet weak var textFifth: UILabel!
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    
    func setupAlpha(){
        textFirst.alpha = 0
        textSecond.alpha = 0
        textThird.alpha = 0
        textFourth.alpha = 0
        textFifth.alpha = 0
        
        firstImage.alpha = 0
        secondImage.alpha = 0
        thirdImage.alpha = 0
        fourthImage.alpha = 0
    }
    
    func setupNavBar(){
        let iconImageView = UIImageView(image: UIImage(named: "barTitle" ))
        self.navigationItem.titleView = iconImageView
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAlpha()
        setupNavBar()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.3, animations: {
            self.textFirst.alpha = 1
        }, completion: {(true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.firstImage.alpha = 1
            }, completion: {(true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.textSecond.alpha = 1
                }, completion: {(true ) in
                    
                    UIView.animate(withDuration: 0.3, animations: {
                        self.secondImage.alpha = 1
                    }, completion: {(true ) in
                        UIView.animate(withDuration: 0.3, animations: {
                            self.textThird.alpha = 1
                        }, completion: {(true)  in
                            UIView.animate(withDuration: 0.3, animations: {
                                self.thirdImage.alpha = 1
                            }, completion: {(true)  in
                                UIView.animate(withDuration: 0.3, animations: {
                                    self.textFourth.alpha = 1
                                }, completion: {(true) in
                                    UIView.animate(withDuration: 0.3, animations: {
                                        self.fourthImage.alpha = 1
                                    }, completion: {(true) in
                                        UIView.animate(withDuration: 0.3, animations: {
                                            self.textFifth.alpha = 1
                                        }, completion: {(true)  in })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var prefersStatusBarHidden: Bool
    {
        return true
    
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
