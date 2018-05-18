//
//  TutorialViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-12-14.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController {

    lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.layer.cornerRadius = 5
        view.backgroundColor = UIColor.white
        return view
    }()
    
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize.height = 800
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.layer.cornerRadius = 5
        view.backgroundColor = UIColor.white
        return view
         }()

    lazy var firstTextlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 3
        label.text = "To calculate your salaray ,just put information in the text field and press next botton:"
        return label
    }()
    
    lazy var firstIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 2
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "go")
        return image
    }()
    
    lazy var secondTextlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 3
        label.text = "If you want to clean the text field just press next button or start edit text field:"
        return label
    }()
    
    lazy var secondIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 2
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "clear")
        return image
    }()
    
    lazy var thirdTextlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 3
        label.text = "Such icons can provide for you information about you income before taxes in the different currencies"
        return label
    }()
    
    lazy var thirdIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 2
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "EUR")
        return image
    }()
    
    
    fileprivate func setupNavBar(){
        navigationItem.title = "Tutorial"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleBack))
    }
    
    @objc fileprivate func handleBack(){
        let main = UINavigationController(rootViewController: MainVC())
        self.present(main, animated: true, completion: nil)
    }
    
    fileprivate func setupView(){
        
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        
        scrollView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 10).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -10).isActive = true
        scrollView.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 10).isActive = true
        scrollView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -10).isActive = true
        
        firstTextlabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        firstTextlabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10).isActive = true
        firstTextlabel.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 10).isActive = true
        firstTextlabel.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -10).isActive = true
        firstTextlabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        firstIcon.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        firstIcon.topAnchor.constraint(equalTo: firstTextlabel.bottomAnchor, constant: 20).isActive = true
        firstIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        secondTextlabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        secondTextlabel.topAnchor.constraint(equalTo: firstIcon.bottomAnchor, constant: 10).isActive = true
        secondTextlabel.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 10).isActive = true
        secondTextlabel.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -10).isActive = true
        secondTextlabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        secondIcon.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        secondIcon.topAnchor.constraint(equalTo: secondTextlabel.bottomAnchor, constant: 10).isActive = true
        secondIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        secondIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        thirdTextlabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        thirdTextlabel.topAnchor.constraint(equalTo: secondIcon.bottomAnchor, constant: 10).isActive = true
        thirdTextlabel.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 10).isActive = true
        thirdTextlabel.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -10).isActive = true
        thirdTextlabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        thirdIcon.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        thirdIcon.topAnchor.constraint(equalTo: thirdTextlabel.bottomAnchor, constant: 10).isActive = true
        thirdIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        thirdIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainView)
        mainView.addSubview(scrollView)
        scrollView.addSubview(firstTextlabel)
        scrollView.addSubview(firstIcon)
        scrollView.addSubview(secondTextlabel)
        scrollView.addSubview(secondIcon)
        scrollView.addSubview(thirdTextlabel)
        scrollView.addSubview(thirdIcon)
        view.backgroundColor = UIColor.white
        setupView()
        setupNavBar()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
