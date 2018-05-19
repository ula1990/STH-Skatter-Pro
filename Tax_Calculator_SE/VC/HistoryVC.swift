//
//  HistoryVC.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 18/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit
import Charts

class HistoryVC: UIViewController {
    
    lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        view.layer.cornerRadius = 5
        view.backgroundColor = UIColor.white
        return view
    }()
    
    var lineChartView = LineChartView(frame: CGRect.zero)

//    let xArray = Array(0 ... 16)
    var xArray = [34567,89723,34566,24000,54678,90235]
    

    func configureBarChartView() {
        let ys1 = xArray.map { x in return Double(x) }
        let yse1 = ys1.enumerated().map { (offset: Int, element: Double) in
            return ChartDataEntry(x: Double(offset), y: abs(element))
        }
        let data = LineChartData()
        let dataSet1 = LineChartDataSet(values: yse1, label: "Your salary history")
        dataSet1.circleColors = [.purple,.red,.green]
        dataSet1.lineDashLengths = [5, 2.5]
        dataSet1.highlightLineDashLengths = [5, 2.5]
        dataSet1.setColor(.black)
        dataSet1.lineWidth = 2
        dataSet1.circleRadius = 7
        dataSet1.drawCircleHoleEnabled = false
        dataSet1.valueFont = .systemFont(ofSize: 9)
        dataSet1.formLineDashLengths = [5, 2.5]
        dataSet1.formLineWidth = 0
        dataSet1.formSize = 15
        dataSet1.colors = [.purple]
        data.addDataSet(dataSet1)
        data.setDrawValues(false)
        lineChartView.data = data
        lineChartView.xAxis.yOffset = 0
//        lineChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: xArray.map {
//            "\($0 / 2):\($0 % 2 == 0 ? "00" : "30")"
//        })
        
        lineChartView.xAxis.granularity = 12
        lineChartView.gridBackgroundColor = .white
        lineChartView.chartDescription = nil
        lineChartView.data?.highlightEnabled = false
        lineChartView.doubleTapToZoomEnabled = true
        lineChartView.leftAxis.enabled = false
        lineChartView.rightAxis.enabled = true
        lineChartView.xAxis.labelPosition = .bottomInside
        
    
    }
    
    fileprivate func setupNavBar(){
        navigationItem.title = "History"
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
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavBar()
        view.addSubview(mainView)
        mainView.addSubview(lineChartView)
        setupView()
        configureBarChartView()
        
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChartView.frame = mainView.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
