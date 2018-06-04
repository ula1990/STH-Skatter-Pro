//
//  TaxCalculation.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 15/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {
    
    func sumTax()->Double{
        let b = Double(inputTextField.text!)
        if b! < 12501 {
            let result = taxPercent[0]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 13001 && b! >= 12501{
            let result = taxPercent[1]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 13501 && b! >= 13001{
            let result = taxPercent[2]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 14001 && b! >= 13501{
            let result = taxPercent[3]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 14501 && b! >= 14001{
            let result = taxPercent[4]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 15001 && b! >= 14501{
            let result = taxPercent[5]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 15501 && b! >= 15001{
            let result = taxPercent[6]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 16001 && b! >= 15501{
            let result = taxPercent[7]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 16501 && b! >= 16001{
            let result = taxPercent[8]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 17001 && b! >= 16501{
            let result = taxPercent[9]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 17501 && b! >= 17001{
            let result = taxPercent[10]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 18001 && b! >= 17501{
            let result = taxPercent[11]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 18501 && b! >= 18001{
            let result = taxPercent[12]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 19001 && b! >= 18501{
            let result = taxPercent[13]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 19501 && b! >= 19001{
            let result = taxPercent[14]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 20001 && b! >= 19501{
            let result = taxPercent[15]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 20501 && b! >= 20001{
            let result = taxPercent[16]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 21001 && b! >= 20501{
            let result = taxPercent[17]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 21501 && b! >= 21001{
            let result = taxPercent[18]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 22001 && b! >= 21501{
            let result = taxPercent[19]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 22501 && b! >= 22001{
            let result = taxPercent[20]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 23001 && b! >= 22501{
            let result = taxPercent[21]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 23501 && b! >= 23001{
            let result = taxPercent[22]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 24001 && b! >= 23501{
            let result = taxPercent[23]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 24501 && b! >= 24001{
            let result = taxPercent[24]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 25001 && b! >= 24501{
            let result = taxPercent[25]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 25501 && b! >= 25001{
            let result = taxPercent[26]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 26001 && b! >= 25501{
            let result = taxPercent[27]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 26501 && b! >= 26001{
            let result = taxPercent[28]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 27001 && b! >= 26501{
            let result = taxPercent[29]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 27501 && b! >= 27001{
            let result = taxPercent[30]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 28001 && b! >= 27501{
            let result = taxPercent[31]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 28501 && b! >= 28001{
            let result = taxPercent[32]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 29001 && b! >= 28501{
            let result = taxPercent[33]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 29501 && b! >= 29001{
            let result = taxPercent[34]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 30001 && b! >= 29501{
            let result = taxPercent[35]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 30501 && b! >= 30001{
            let result = taxPercent[36]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 31001 && b! >= 30501{
            let result = taxPercent[37]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 31501 && b! >= 31001{
            let result = taxPercent[38]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 32001 && b! >= 31501{
            let result = taxPercent[39]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 32501 && b! >= 32001{
            let result = taxPercent[40]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 33001 && b! >= 32501{
            let result = taxPercent[41]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 33501 && b! >= 33001{
            let result = taxPercent[42]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 34001 && b! >= 33501{
            let result = taxPercent[43]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 34501 && b! >= 34001{
            let result = taxPercent[44]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 35001 && b! >= 34501{
            let result = taxPercent[45]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 35501 && b! >= 35001{
            let result = taxPercent[46]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 36001 && b! >= 35501{
            let result = taxPercent[47]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 36501 && b! >= 36001{
            let result = taxPercent[48]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 37001 && b! >= 36501{
            let result = taxPercent[49]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 37501 && b! >= 37001{
            let result = taxPercent[50]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 38001 && b! >= 37501{
            let result = taxPercent[51]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 38501 && b! >= 38001{
            let result = taxPercent[52]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 39001 && b! >= 38501{
            let result = taxPercent[53]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 39501 && b! >= 39001{
            let result = taxPercent[54]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 40001 && b! >= 39501{
            let result = taxPercent[55]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 40501 && b! >= 40001{
            let result = taxPercent[56]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 41001 && b! >= 40501{
            let result = taxPercent[57]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 41501 && b! >= 41001{
            let result = taxPercent[58]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 42001 && b! >= 41501{
            let result = taxPercent[59]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 42501 && b! >= 42001{
            let result = taxPercent[60]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 43001 && b! >= 42501{
            let result = taxPercent[61]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 43501 && b! >= 43001{
            let result = taxPercent[62]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 44001 && b! >= 43501{
            let result = taxPercent[63]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 44501 && b! >= 44001{
            let result = taxPercent[64]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 45001 && b! >= 44501{
            let result = taxPercent[65]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 45501 && b! >= 45001{
            let result = taxPercent[66]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 46001 && b! >= 45501{
            let result = taxPercent[67]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 46501 && b! >= 46001{
            let result = taxPercent[68]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 47001 && b! >= 46501{
            let result = taxPercent[69]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 47501 && b! >= 47001{
            let result = taxPercent[70]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 48001 && b! >= 47501{
            let result = taxPercent[71]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 48501 && b! >= 48001{
            let result = taxPercent[72]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 49001 && b! >= 48501{
            let result = taxPercent[73]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 49501 && b! >= 49001{
            let result = taxPercent[74]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 50001 && b! >= 49501{
            let result = taxPercent[75]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 50501 && b! >= 50001{
            let result = taxPercent[76]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 51001 && b! >= 50501{
            let result = taxPercent[77]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 51501 && b! >= 51001{
            let result = taxPercent[78]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 52001 && b! >= 51501{
            let result = taxPercent[79]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 52501 && b! >= 52001{
            let result = taxPercent[80]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 53001 && b! >= 52501{
            let result = taxPercent[81]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 53501 && b! >= 53001{
            let result = taxPercent[82]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 54001 && b! >= 53501{
            let result = taxPercent[83]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 54501 && b! >= 54001{
            let result = taxPercent[84]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 55001 && b! >= 54501{
            let result = taxPercent[85]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 55501 && b! >= 55001{
            let result = taxPercent[86]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 56001 && b! >= 55501{
            let result = taxPercent[87]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 56501 && b! >= 56001{
            let result = taxPercent[88]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 57001 && b! >= 56501{
            let result = taxPercent[89]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 57501 && b! >= 57001{
            let result = taxPercent[90]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 58001 && b! >= 57501{
            let result = taxPercent[91]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 58501 && b! >= 58001{
            let result = taxPercent[92]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 59001 && b! >= 58501{
            let result = taxPercent[93]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 59501 && b! >= 59001{
            let result = taxPercent[94]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 60001 && b! >= 59001{
            let result = taxPercent[95]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 60501 && b! >= 60001{
            let result = taxPercent[96]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 61001 && b! >= 60501{
            let result = taxPercent[97]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 61501 && b! >= 61001{
            let result = taxPercent[98]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 62001 && b! >= 61501{
            let result = taxPercent[99]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 62501 && b! >= 62001{
            let result = taxPercent[100]*Double(b!)
            return round(((result)*100)/100)
        }
        else if b! < 63001 && b! >= 62501{
            let result = taxPercent[101]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 63501 && b! >= 63001{
            let result = taxPercent[102]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 64001 && b! >= 63501{
            let result = taxPercent[103]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 64501 && b! >= 64001{
            let result = taxPercent[104]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 65001 && b! >= 64501{
            let result = taxPercent[105]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 65501 && b! >= 65001{
            let result = taxPercent[106]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 66001 && b! >= 65501{
            let result = taxPercent[107]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 66501 && b! >= 66001{
            let result = taxPercent[108]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 67001 && b! >= 66501{
            let result = taxPercent[109]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 67501 && b! >= 67001{
            let result = taxPercent[110]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 68001 && b! >= 67501{
            let result = taxPercent[111]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 68501 && b! >= 68001{
            let result = taxPercent[112]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 69001 && b! >= 68501{
            let result = taxPercent[113]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 69501 && b! >= 69001{
            let result = taxPercent[114]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 70001 && b! >= 69501{
            let result = taxPercent[115]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 70501 && b! >= 70001{
            let result = taxPercent[116]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 71001 && b! >= 70501{
            let result = taxPercent[117]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 71501 && b! >= 71001{
            let result = taxPercent[118]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 72001 && b! >= 71501{
            let result = taxPercent[119]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 72501 && b! >= 72001{
            let result = taxPercent[120]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 73001 && b! >= 72501{
            let result = taxPercent[121]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 73501 && b! >= 73001{
            let result = taxPercent[122]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 74001 && b! >= 73501{
            let result = taxPercent[123]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 74501 && b! >= 74001{
            let result = taxPercent[124]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 75001 && b! >= 74501{
            let result = taxPercent[125]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 75501 && b! >= 75001{
            let result = taxPercent[126]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 76001 && b! >= 75501{
            let result = taxPercent[127]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 76501 && b! >= 76001{
            let result = taxPercent[128]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 77001 && b! >= 76501{
            let result = taxPercent[129]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 77501 && b! >= 77001{
            let result = taxPercent[130]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 78001 && b! >= 77501{
            let result = taxPercent[131]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 78501 && b! >= 78001{
            let result = taxPercent[132]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 79001 && b! >= 78501{
            let result = taxPercent[133]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 79501 && b! >= 79001{
            let result = taxPercent[134]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 80001 && b! >= 79501{
            let result = taxPercent[135]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 80501 && b! >= 80001{
            let result = taxPercent[136]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 81001 && b! >= 80501{
            let result = taxPercent[137]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 81501 && b! >= 81001{
            let result = taxPercent[138]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 82001 && b! >= 81501{
            let result = taxPercent[139]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 82501 && b! >= 82001{
            let result = taxPercent[140]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 83001 && b! >= 82501{
            let result = taxPercent[141]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 83501 && b! >= 83001{
            let result = taxPercent[142]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 84001 && b! >= 83501{
            let result = taxPercent[143]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 84501 && b! >= 84001{
            let result = taxPercent[144]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 85001 && b! >= 84501{
            let result = taxPercent[145]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 85501 && b! >= 85001{
            let result = taxPercent[146]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 86001 && b! >= 85501{
            let result = taxPercent[147]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 86501 && b! >= 86001{
            let result = taxPercent[148]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 87001 && b! >= 86501{
            let result = taxPercent[149]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 87501 && b! >= 87001{
            let result = taxPercent[150]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 88001 && b! >= 87501{
            let result = taxPercent[151]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 88501 && b! >= 88001{
            let result = taxPercent[152]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 89001 && b! >= 88501{
            let result = taxPercent[153]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 89501 && b! >= 89001{
            let result = taxPercent[154]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 90001 && b! >= 89501{
            let result = taxPercent[155]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 90501 && b! >= 90001{
            let result = taxPercent[156]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 91001 && b! >= 90501{
            let result = taxPercent[157]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 91501 && b! >= 91001{
            let result = taxPercent[158]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 92001 && b! >= 91501{
            let result = taxPercent[159]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 92501 && b! >= 92001{
            let result = taxPercent[160]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 93001 && b! >= 92501{
            let result = taxPercent[161]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 93501 && b! >= 93001{
            let result = taxPercent[162]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 94001 && b! >= 93501{
            let result = taxPercent[163]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 94501 && b! >= 94001{
            let result = taxPercent[164]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 95001 && b! >= 94501{
            let result = taxPercent[165]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 95501 && b! >= 95001{
            let result = taxPercent[166]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 96001 && b! >= 95501{
            let result = taxPercent[167]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 96501 && b! >= 96001{
            let result = taxPercent[168]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 97001 && b! >= 96501{
            let result = taxPercent[169]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 97501 && b! >= 97001{
            let result = taxPercent[170]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 98001 && b! >= 97501{
            let result = taxPercent[171]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 98501 && b! >= 98001{
            let result = taxPercent[172]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 99001 && b! >= 98501{
            let result = taxPercent[173]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 99501 && b! >= 99001{
            let result = taxPercent[174]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 100001 && b! >= 99501{
            let result = taxPercent[175]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 100501 && b! >= 100001{
            let result = taxPercent[176]*Double(b!)
            return round(((result)*100)/100)
        }else if b! < 101001 && b! >= 100501{
            let result = taxPercent[177]*Double(b!)
            return round(((result)*100)/100)
        }
        else{
            let result = 0.0
            return result
        }
    }
    
}
