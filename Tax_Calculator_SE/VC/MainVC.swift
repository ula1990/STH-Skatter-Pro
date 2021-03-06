//
//  ViewController.swift
//  Tax_Calculator_SE
//
//  Created by Ulad Daratsiuk-Demchuk on 7/9/17.
//  Copyright © 2017 Ulad Daratsiuk. All rights reserved.
//

import UIKit
import ObjectiveC
import Foundation

@objc class MainVC: UIViewController,UINavigationControllerDelegate {
    
    var receivedRates: [Double] = [0.77383000000000002, 0.41514000000000001, 3.8416999999999999, 0.19472, 0.15640999999999999, 0.46375, 0.42845, 0.39682000000000001, 0.74133000000000004, 0.087434999999999999, 6.8638000000000003, 0.11479, 12.316000000000001, 0.74109000000000003, 2.2818000000000001, 0.46421000000000001, 0.16156000000000001, 0.099561999999999998, 0.95881000000000005, 31.222000000000001, 0.16772999999999999, 0.12266000000000001, 0.47954000000000002, 1676.0, 131.44, 13.102, 7.9452999999999996, 6.3655999999999997, 2.528, 0.95965, 1.4219999999999999, 0.15548999999999999]
    var receivedTitle: [String] = ["CNY", "PLN", "THB", "BGN", "AUD", "TRY", "ILS", "BRL", "DKK", "GBP", "RUB", "CHF", "ISK", "HRK", "MXN", "RON", "SGD", "EUR", "NOK", "HUF", "NZD", "USD", "MYR", "IDR", "KRW", "JPY", "INR", "PHP", "CZK", "HKD", "ZAR", "CAD"]
    var taxPercent = [0.15528, 0.15969, 0.16370, 0.1674,0.170,0.1742,0.1772, 0.180125,0.1827,0.18529,0.187714,0.18994,0.19205,0.19410,0.196,0.1978,0.19956,0.20119,0.20274,0.20427,0.20568,0.20704,0.20838,0.209625,0.210857,0.212,0.21309,0.2141,0.21520,0.216185,0.217163,0.21807,0.21894,0.219827,0.22064,0.221433,0.22236,0.223645,0.22488,0.22609,0.227230,0.22836,0.229462,0.230529,0.231536,0.23254,0.2335211,0.2344722,0.23536,0.23627,0.237146,0.239710,0.24309,0.246410,0.24964,0.2528,0.255851,0.25885,0.261783,0.26464,0.267411,0.270139,0.27280,0.275409,0.2779325,0.280422,0.28285,0.28523,0.2875483,0.28982,0.292063,0.29425,0.296371,0.2984693,0.30052,0.30254,0.304495,0.306431,0.308330,0.310192,0.312,0.31379,0.31555,0.317277,0.319137,0.3212545,0.32331,0.32535,0.3273628,0.32933,0.331252,0.333155,0.335025,0.3368644,0.338655,0.340433,0.34218,0.343901,0.345577,0.347241,0.34888,0.35049,0.352062,0.353625,0.3551627,0.356676,0.35815,0.3596212,0.361067,0.3624925,0.3638814,0.365264,0.366627,0.3679710,0.36928,0.37058,0.3718723,0.3731408,0.374377,0.375611,0.376827,0.378027,0.37919,0.380364,0.381516,0.38265,0.38376,0.38486,0.38596,0.387038,0.3880903,0.38914,0.39017,0.39120,0.392201,0.3932,0.394186,0.395160,0.3961104,0.39706,0.398,0.39892,0.39983,0.400738,0.401633,0.402517,0.4033801,0.40424,0.4050982,0.405942,0.406765,0.4075909,0.408406,0.409213,0.41,0.410788,0.411569,0.41234,0.413092,0.41384,0.41459,0.41533,0.416053,0.41677,0.41749,0.4182,0.41889,0.419583,0.420269,0.420948,0.421610,0.42227551,0.42293,0.42358,0.42422,0.42486,0.425492,0.426118]
    var nettoPercent = [0.84472, 0.84030, 0.83629, 0.832, 0.829, 0.8258, 0.8227,0.819875,0.81721,0.81470, 0.812285,0.81005,0.80794,0.805894,0.804,0.8022,0.8004,0.79880,0.79725,0.79572,0.79431,0.79295,0.79161,0.790375,0.78914,0.788,0.78690,0.78580,0.784792,0.78381,0.78283,0.78192,0.78105,0.78017,0.779355,0.778566,0.777639,0.776354,0.77511,0.77390,0.772769,0.77163,0.770537,0.769470,0.76846,0.767457,0.7664788,0.76552,0.764630,0.763729,0.762853,0.7602894,0.756909,0.75358,0.7503544,0.7472,0.74414,0.74114,0.73821,0.735357,0.73258,0.729860,0.72719,0.7245909,0.7220674,0.71957,0.71714,0.714760,0.712451,0.710170,0.707936,0.70575,0.7036288,0.7015306,0.69947,0.69746,0.695504,0.69356,0.691669,0.68980,0.688,0.68620,0.68444,0.68272,0.68086,0.678745,0.676684,0.67464,0.672637,0.67066,0.66874,0.666844,0.66497,0.663135,0.661344,0.65956,0.657818,0.656098,0.654422,0.65275,0.65112,0.64950,0.64793,0.646375,0.64483,0.64332,0.64184,0.6403787,0.63893,0.637507,0.63611851,0.634735,0.633372,0.63202,0.630719,0.629414,0.628127,0.626859,0.625622,0.624388,0.623172,0.621972,0.620802,0.6196351,0.61848,0.617346,0.61623,0.61513,0.614039,0.61296,0.6119096,0.61085,0.609821,0.6087974,0.607798,0.6068,0.6058136,0.604839,0.603889,0.602939,0.602,0.60107,0.600167,0.59926,0.59836,0.59748235,0.596619,0.59575,0.59490,0.59405,0.59323,0.592409,0.591593,0.590786,0.59,0.58921,0.588430,0.587659,0.586907,0.5861,0.585405,0.58466,0.58394,0.58322,0.58250,0.5818,0.581109,0.58041,0.579730,0.57905,0.578389,0.577724,0.577065,0.57641,0.57577,0.57514,0.57450,0.573881]
    
    var currentAmount: [Double] = []
    let formatter = NumberFormatter()
    var justOnce: Bool =  true
    let currencieCellId = "currencieCellId"
    let menuCellId = "menuCellId"
    let companyCellId = "companyCellId"
    var menuShowing = false
    var menuRightAnchor: NSLayoutConstraint?
    var menuList: [MenuModel] = []
    var compCurrentArray: [Company] = []
    
    
    lazy var scrollView: UIScrollView = {
       let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize.height = 1000
        return view
    }()
    
    lazy var menuView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        return view
    }()
    
    lazy var menuTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = UITableViewCellSeparatorStyle.none
        table.layer.cornerRadius = 5
        table.backgroundColor = UIColor.white.withAlphaComponent(0)
        table.isScrollEnabled = false
        table.register(MenuCell.self, forCellReuseIdentifier: menuCellId)
        return table
    }()
    
    
    lazy var inputAmountView: UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = .white
        return view
    }()
    
    lazy var inputTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "Please put your income"
        field.textColor = UIColor.black
        field.layer.borderWidth = 2
        field.layer.borderColor = UIColor.lightGray.cgColor.copy(alpha: 0.3)
        field.layer.cornerRadius = 5
        field.font = UIFont.systemFont(ofSize: 19)
        field.minimumFontSize = 14
        field.textAlignment = .center
        field.layer.shadowOpacity = 0.2
        field.layer.shadowRadius = 5
        field.keyboardType = .numberPad
        return field
        
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.contentMode = .scaleAspectFill
        button.setImage(UIImage(named: "go"), for: .normal)
        button.addTarget(self, action: #selector(calculateAmount), for: .touchUpInside)
        return button
    }()

    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 25

        button.setImage(UIImage(named: "clear"), for: .normal)
        button.addTarget(self, action: #selector(clearData), for: .touchUpInside)
        return button
    }()

    lazy var taxView: UIView = {
       let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 80
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = UIColor(named: "NewPink")?.withAlphaComponent(0.9)
        return view
    }()
    
    lazy var nettoView: UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 90
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = UIColor(named: "NewGreen")
        return view
    }()
    
    lazy var annualView: UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 85
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = UIColor.purple.withAlphaComponent(0.7)
        return view
    }()
    
    
    lazy var taxLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 19)
        label.textColor = UIColor.white
        label.text = "Taxes amount"
        return label
    }()
    
    lazy var taxResult: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    lazy var nettoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 19)
        label.text = "Netto"
        return label
    }()
    
    lazy var nettoResult: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    
    lazy var annualLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 19)
        label.text = "Annual income"
        return label
    }()
    
    lazy var annualResult: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    lazy var companiesViewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.lightGray
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Same salary level here:"
        label.textAlignment = .left
        return label
    }()
    
    lazy var companyCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 1, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(ComapnyCell.self, forCellWithReuseIdentifier: companyCellId)
        view.backgroundColor = UIColor(named: "darkBackground")
        view.isScrollEnabled = true
        return view
    }()
    
    
    lazy var currencyViewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.lightGray
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "More in other currencies:"
        label.textAlignment = .left
        return label
    }()
    
    lazy var currenciesView: UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = .white
        return view
    }()
    
    lazy var currenciesTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = UITableViewCellSeparatorStyle.none
        table.layer.cornerRadius = 5
        table.register(CurrencieCell.self, forCellReuseIdentifier: currencieCellId)
        return table
    }()
    
    lazy var companiesView: UIView = {
        let view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        view.layer.shadowOpacity = 0.3
        view.backgroundColor = .white
        return view
    }()
    
    
    fileprivate func defaultsSaveForLabels(){
        defaults.set(nettoResult.text!, forKey: outputL)
        defaults.set(taxResult.text!, forKey: taxL)
        defaults.set(annualResult.text!, forKey: addI)
    }
    
    
    //SHARE BUTTON
    
    @objc fileprivate func share() {
        let activityVC = UIActivityViewController(activityItems: ["Take a look on this app. to calculate the Taxes in Stockholm area https://itunes.apple.com/us/app/skatter-pro/id1326491203?ls=1&mt=8"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    

    //function to open URL of the career page for different companies
    
    func openCareerUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)}
        
    }
    //CONFIGURATIONS FOR USERDEFAULTS
    
    let defaults = UserDefaults.standard
    let taxResultL = "taxResultL"
    let nettL = "nettL"
    let annualL = "annualL"
    let mSL = "mSL"
    let outputL = "outputL"
    let taxL = "taxL"
    let addI = "addI"
    
    
    fileprivate func updateLabelsInfo() {
        formatter.numberStyle = NumberFormatter.Style.currency
        formatter.locale = NSLocale(localeIdentifier: "sv_SE") as Locale?
        formatter.currencyDecimalSeparator = "."
        nettoResult.text = formatter.string (from: NSNumber(value:(sumNetto())))
        taxResult.text = formatter.string (from: NSNumber(value:(sumTax())))
        annualResult.text = formatter.string (from: NSNumber(value:(12*Int(inputTextField.text!)!)))!
        defaultsSaveForLabels()
    }
    
    @objc fileprivate func calculateAmount(_ sender: UIButton) {
        if inputTextField.text?.isEmpty == true{
            Alert.showBasic(title: "Check input", msg: "Field can't be empty", vc: self)
        }else{
        getCurrencyRates(nameOfCurrency: "SEK")
        inputTextField.resignFirstResponder()
        updateCompaniesIcons()
        updateLabelsInfo()
        }
    }

    @objc fileprivate func clearData(_ sender: UIButton) {
        formatter.numberStyle = NumberFormatter.Style.currency
        formatter.locale = NSLocale(localeIdentifier: "sv_SE") as Locale?
        formatter.currencyDecimalSeparator = "."
        
        nettoResult.text = formatter.string (from: NSNumber(value:0))!
        taxResult.text = nettoResult.text
        annualResult.text = nettoResult.text
        inputTextField.text = ""
        defaultsSaveForLabels()
    }
    
    @objc fileprivate func menu() {
        if (menuShowing){
            UIView.animate(withDuration: 0.3) {
                self.menuRightAnchor?.isActive = false
                self.menuRightAnchor = self.menuView.rightAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0)
                self.menuRightAnchor?.isActive = true
                self.view.layoutIfNeeded()
            }
        }else{
            UIView.animate(withDuration: 0.3, animations: {
                self.menuRightAnchor?.isActive = false
                self.menuRightAnchor = self.menuView.rightAnchor.constraint(equalTo: self.view.leftAnchor, constant: 120)
                self.menuRightAnchor?.isActive = true
                self.view.layoutIfNeeded()
            }) { (true) in
            }
        }
        menuShowing = !menuShowing
    }

    func calculateRates(){
        if inputTextField.text?.isEmpty == true {
            currentAmount = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            self.currenciesTable.reloadData()
        }else{
            currentAmount.removeAll()
            currentAmount = receivedRates.map{ $0 * Double(inputTextField.text!)! }
            self.currenciesTable.reloadData()
        }
    }
    
    //  TO MONITOR WHEN EDIT WILL BE FINISHED
    @objc func finishedWithInput (){
        view.endEditing(true)
    }
    
    fileprivate func defaultsForLabels() {
        if let outputLb = defaults.value(forKey: outputL){
            nettoResult.text = outputLb as? String
        }
        if let taxLb = defaults.value(forKey: taxL){
            taxResult.text = taxLb as? String
        }
        if let addIn = defaults.value(forKey: addI){
            annualResult.text = addIn as? String
        }
    }
    
    fileprivate func toolBarSetup() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.finishedWithInput))
        doneButton.tintColor = .black
        toolBar.setItems([flexibleSpace, doneButton], animated: true)
        inputTextField.inputAccessoryView = toolBar
    }
    
    fileprivate func addViews() {
        view.addSubview(scrollView)
        view.addSubview(menuView)
        menuView.addSubview(menuTable)
        scrollView.addSubview(inputAmountView)
        inputAmountView.addSubview(inputTextField)
        inputAmountView.addSubview(calculateButton)
        inputAmountView.addSubview(clearButton)
        scrollView.addSubview(nettoView)
        scrollView.addSubview(taxView)
        scrollView.addSubview(annualView)
        scrollView.addSubview(currenciesView)
        scrollView.addSubview(companiesView)
        nettoView.addSubview(nettoLabel)
        nettoView.addSubview(nettoResult)
        taxView.addSubview(taxResult)
        taxView.addSubview(taxLabel)
        annualView.addSubview(annualLabel)
        annualView.addSubview(annualResult)
        currenciesView.addSubview(currencyViewLabel)
        currenciesView.addSubview(currenciesTable)
        companiesView.addSubview(companiesViewLabel)
        companiesView.addSubview(companyCollectionView)

    }
    
    
    fileprivate func setupViews(){
        
        menuView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        menuView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        menuView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        menuRightAnchor = menuView.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 0)
        menuRightAnchor?.isActive = true
        
        menuTable.centerXAnchor.constraint(equalTo: menuView.centerXAnchor).isActive = true
        menuTable.topAnchor.constraint(equalTo: menuView.topAnchor).isActive = true
        menuTable.bottomAnchor.constraint(equalTo: menuView.bottomAnchor).isActive = true
        menuTable.leftAnchor.constraint(equalTo: menuView.leftAnchor).isActive = true
        menuTable.rightAnchor.constraint(equalTo: menuView.rightAnchor).isActive = true
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        inputAmountView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30).isActive = true
        inputAmountView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        inputAmountView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        inputAmountView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        inputAmountView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        
        inputTextField.topAnchor.constraint(equalTo: inputAmountView.topAnchor, constant: 15).isActive = true
        inputTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        inputTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        inputTextField.leftAnchor.constraint(equalTo: clearButton.rightAnchor, constant: 10).isActive = true
        inputTextField.rightAnchor.constraint(equalTo: calculateButton.leftAnchor, constant: -10).isActive = true
        
        calculateButton.rightAnchor.constraint(equalTo: inputAmountView.rightAnchor, constant: -5).isActive = true
        calculateButton.centerYAnchor.constraint(equalTo: inputAmountView.centerYAnchor).isActive = true
        calculateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        calculateButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        clearButton.leftAnchor.constraint(equalTo: inputAmountView.leftAnchor, constant: 5).isActive = true
        clearButton.centerYAnchor.constraint(equalTo: inputTextField.centerYAnchor).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        clearButton.widthAnchor.constraint(equalToConstant: 50).isActive = true

        taxView.topAnchor.constraint(equalTo: inputAmountView.bottomAnchor, constant: 20).isActive = true
        taxView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        taxView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        taxView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        taxLabel.centerXAnchor.constraint(equalTo: taxView.centerXAnchor).isActive = true
        taxLabel.centerYAnchor.constraint(equalTo: taxView.centerYAnchor, constant: -25).isActive = true
        taxLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        taxLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        taxResult.centerXAnchor.constraint(equalTo: taxView.centerXAnchor).isActive = true
        taxResult.centerYAnchor.constraint(equalTo: taxView.centerYAnchor, constant: 15).isActive = true
        taxResult.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        annualView.topAnchor.constraint(equalTo: inputAmountView.bottomAnchor, constant: 20).isActive = true
        annualView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        annualView.widthAnchor.constraint(equalToConstant: 170).isActive = true
        annualView.heightAnchor.constraint(equalToConstant: 170).isActive = true

        annualLabel.centerXAnchor.constraint(equalTo: annualView.centerXAnchor).isActive = true
        annualLabel.centerYAnchor.constraint(equalTo: annualView.centerYAnchor, constant: -25).isActive = true
        annualLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        annualLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        annualResult.centerXAnchor.constraint(equalTo: annualView.centerXAnchor).isActive = true
        annualResult.centerYAnchor.constraint(equalTo: annualView.centerYAnchor, constant: 15).isActive = true
        annualResult.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        nettoView.topAnchor.constraint(equalTo: annualView.bottomAnchor, constant: 1).isActive = true
        nettoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nettoView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        nettoView.heightAnchor.constraint(equalToConstant: 180).isActive = true

        nettoLabel.centerXAnchor.constraint(equalTo: nettoView.centerXAnchor).isActive = true
        nettoLabel.centerYAnchor.constraint(equalTo: nettoView.centerYAnchor, constant: -15).isActive = true
        nettoLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        nettoResult.centerXAnchor.constraint(equalTo: nettoView.centerXAnchor).isActive = true
        nettoResult.centerYAnchor.constraint(equalTo: nettoView.centerYAnchor, constant: 15).isActive = true
        nettoResult.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        companiesView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        companiesView.topAnchor.constraint(equalTo: nettoView.bottomAnchor, constant: 20).isActive = true
        companiesView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        companiesView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        companiesView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        companiesViewLabel.topAnchor.constraint(equalTo: companiesView.topAnchor, constant: 10).isActive = true
        companiesViewLabel.leftAnchor.constraint(equalTo: companiesView.leftAnchor, constant: 10).isActive = true
        companiesViewLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        companyCollectionView.topAnchor.constraint(equalTo: companiesViewLabel.bottomAnchor, constant: 5).isActive = true
        companyCollectionView.leftAnchor.constraint(equalTo: companiesView.leftAnchor, constant: 20).isActive = true
        companyCollectionView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        companyCollectionView.rightAnchor.constraint(equalTo: companiesView.rightAnchor, constant: -20).isActive = true


        currenciesView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        currenciesView.topAnchor.constraint(equalTo: companiesView.bottomAnchor, constant: 30).isActive = true
        currenciesView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        currenciesView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        currenciesView.heightAnchor.constraint(equalToConstant: 330).isActive = true
        
        currencyViewLabel.topAnchor.constraint(equalTo: currenciesView.topAnchor, constant: 10).isActive = true
        currencyViewLabel.leftAnchor.constraint(equalTo: currenciesView.leftAnchor, constant: 10).isActive = true
        currencyViewLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        currenciesTable.centerXAnchor.constraint(equalTo: currenciesView.centerXAnchor).isActive = true
        currenciesTable.leftAnchor.constraint(equalTo: currenciesView.leftAnchor, constant: 5).isActive = true
        currenciesTable.rightAnchor.constraint(equalTo: currenciesView.rightAnchor, constant: -5).isActive = true
        currenciesTable.topAnchor.constraint(equalTo: currencyViewLabel.bottomAnchor, constant: 10).isActive = true
        currenciesTable.bottomAnchor.constraint(equalTo: currenciesView.bottomAnchor, constant: -5).isActive = true

    }
    
    fileprivate func connectElements() {
        inputTextField.delegate = self
        currenciesTable.delegate = self
        currenciesTable.dataSource = self
        menuTable.delegate = self
        menuTable.dataSource = self
    }
    
    fileprivate func configureNavBar(){
        let navBarLeftItemImage = UIImage(named: "menu")
        let navBarRightItemImage = UIImage(named: "share")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: navBarRightItemImage, landscapeImagePhone: nil, style: UIBarButtonItemStyle.plain, target: self, action: #selector(share))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: navBarLeftItemImage, landscapeImagePhone: nil, style: UIBarButtonItemStyle.plain, target: self, action: #selector(menu))
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    fileprivate func creatMenuArray()->[MenuModel]{
        var array:[MenuModel] = []
        
        
        let menuItem1 = MenuModel(title: "Main", icon: UIImage(named: "main"), viewController: MainVC())
        let menuItem2 = MenuModel(title: "History", icon: UIImage(named: "history"), viewController: HistoryVC())
        let menuItem3 = MenuModel(title: "Tutorial", icon: UIImage(named: "tutorial"), viewController: TutorialVC())
        let menuItem4 = MenuModel(title: "About", icon: UIImage(named: "about"), viewController: AboutVC() )
        
        array.append(menuItem1)
        array.append(menuItem2)
        array.append(menuItem3)
        array.append(menuItem4)
        
        return array
    }
    
    fileprivate func runMainFunctions() {
        menuList = creatMenuArray()
        configureNavBar()
        addViews()
        setupViews()
        getCurrencyRates(nameOfCurrency: "SEK")
        connectElements()
        toolBarSetup()
        defaultsForLabels()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        runMainFunctions()
        view.backgroundColor = .white
        companyCollectionView.delegate = self
        companyCollectionView.dataSource = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
    }
    
    
}
