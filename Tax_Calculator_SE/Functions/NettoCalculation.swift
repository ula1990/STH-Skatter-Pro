//
//  NettoCalculation.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 15/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC {
    
    func sumNetto()->Int{
        let b = Int(inputTextField.text!)
        if b! < 12501 {
            let result = nettoPercent[0]*Double(b!)
            return Int(round(result))
        }else if b! < 13001 && b! >= 12501{
            let result = nettoPercent[1]*Double(b!)
            return Int(round(result)
            )
        }else if b! < 13501 && b! >= 13001{
            let result = nettoPercent[2]*Double(b!)
            return Int(round(result))
        }else if b! < 14001 && b! >= 12501{
            let result = nettoPercent[3]*Double(b!)
            return Int(round(result))
        }else if b! < 14501 && b! >= 14001{
            let result = nettoPercent[4]*Double(b!)
            return Int(round(result))
        }else if b! < 15001 && b! >= 14501{
            let result = nettoPercent[5]*Double(b!)
            return Int(round(result))
        }
        else if b! < 15501 && b! >= 15001{
            let result = nettoPercent[6]*Double(b!)
            return Int(round(result))
        }
        else if b! < 16001 && b! >= 15501{
            let result = nettoPercent[7]*Double(b!)
            return Int(round(result))
        }
        else if b! < 16501 && b! >= 16001{
            let result = nettoPercent[8]*Double(b!)
            return Int(round(result))
        }else if b! < 17001 && b! >= 16501{
            let result = nettoPercent[9]*Double(b!)
            return Int(round(result))
        }else if b! < 17501 && b! >= 17001{
            let result = nettoPercent[10]*Double(b!)
            return Int(round(result))
        }
        else if b! < 18001 && b! >= 17501{
            let result = nettoPercent[11]*Double(b!)
            return Int(round(result))
        }
        else if b! < 18501 && b! >= 18001{
            let result = nettoPercent[12]*Double(b!)
            return Int(round(result))
        }
        else if b! < 19001 && b! >= 18501{
            let result = nettoPercent[13]*Double(b!)
            return Int(round(result))
        }
        else if b! < 19501 && b! >= 19001{
            let result = nettoPercent[14]*Double(b!)
            return Int(round(result))
        }
        else if b! < 20001 && b! >= 19501{
            let result = nettoPercent[15]*Double(b!)
            return Int(round(result))
        }else if b! < 20501 && b! >= 20001{
            let result = nettoPercent[16]*Double(b!)
            return Int(round(result))
        }
        else if b! < 21001 && b! >= 20501{
            let result = nettoPercent[17]*Double(b!)
            return Int(round(result))
        }
        else if b! < 21501 && b! >= 21001{
            let result = nettoPercent[18]*Double(b!)
            return Int(round(result))
        }
        else if b! < 22001 && b! >= 21501{
            let result = nettoPercent[19]*Double(b!)
            return Int(round(result))
        }
        else if b! < 22501 && b! >= 22001{
            let result = nettoPercent[20]*Double(b!)
            return Int(round(result))
        }
        else if b! < 23001 && b! >= 22501{
            let result = nettoPercent[21]*Double(b!)
            return Int(round(result))
        }
        else if b! < 23501 && b! >= 23001{
            let result = nettoPercent[22]*Double(b!)
            return Int(round(result))
        }else if b! < 24001 && b! >= 23501{
            let result = nettoPercent[23]*Double(b!)
            return Int(round(result))
        }
        else if b! < 24501 && b! >= 24001{
            let result = nettoPercent[24]*Double(b!)
            return Int(round(result))
        }
        else if b! < 25001 && b! >= 24501{
            let result = nettoPercent[25]*Double(b!)
            return Int(round(result))
        }
        else if b! < 25501 && b! >= 25001{
            let result = nettoPercent[26]*Double(b!)
            return Int(round(result))
        }
        else if b! < 26001 && b! >= 25501{
            let result = nettoPercent[27]*Double(b!)
            return Int(round(result))
        }
        else if b! < 26501 && b! >= 26001{
            let result = nettoPercent[28]*Double(b!)
            return Int(round(result))
        }
        else if b! < 27001 && b! >= 26501{
            let result = nettoPercent[29]*Double(b!)
            return Int(round(result))
        }
        else if b! < 27501 && b! >= 27001{
            let result = nettoPercent[30]*Double(b!)
            return Int(round(result))
        }else if b! < 28001 && b! >= 27501{
            let result = nettoPercent[31]*Double(b!)
            return Int(round(result))
        }
        else if b! < 28501 && b! >= 28001{
            let result = nettoPercent[32]*Double(b!)
            return Int(round(result))
        }
        else if b! < 29001 && b! >= 28501{
            let result = nettoPercent[33]*Double(b!)
            return Int(round(result))
        }
        else if b! < 29501 && b! >= 29001{
            let result = nettoPercent[34]*Double(b!)
            return Int(round(result))
        }
        else if b! < 30001 && b! >= 29501{
            let result = nettoPercent[35]*Double(b!)
            return Int(round(result))
        }
        else if b! < 30501 && b! >= 30001{
            let result = nettoPercent[36]*Double(b!)
            return Int(round(result))
        }
        else if b! < 31001 && b! >= 30501{
            let result = nettoPercent[37]*Double(b!)
            return Int(round(result))
        }
        else if b! < 31501 && b! >= 31001{
            let result = nettoPercent[38]*Double(b!)
            return Int(round(result))
        }
        else if b! < 32001 && b! >= 31501{
            let result = nettoPercent[39]*Double(b!)
            return Int(round(result))
        }
        else if b! < 32501 && b! >= 32001{
            let result = nettoPercent[40]*Double(b!)
            return Int(round(result))
        }
        else if b! < 33001 && b! >= 32501{
            let result = nettoPercent[41]*Double(b!)
            return Int(round(result))
        }
        else if b! < 33501 && b! >= 33001{
            let result = nettoPercent[42]*Double(b!)
            return Int(round(result))
        }
        else if b! < 34001 && b! >= 33501{
            let result = nettoPercent[43]*Double(b!)
            return Int(round(result))
        }
        else if b! < 34501 && b! >= 34001{
            let result = nettoPercent[44]*Double(b!)
            return Int(round(result))
        }
        else if b! < 35001 && b! >= 34501{
            let result = nettoPercent[45]*Double(b!)
            return Int(round(result))
        }
        else if b! < 35501 && b! >= 35001{
            let result = nettoPercent[46]*Double(b!)
            return Int(round(result))
        }
        else if b! < 36001 && b! >= 35501{
            let result = nettoPercent[47]*Double(b!)
            return Int(round(result))
        }
        else if b! < 36501 && b! >= 36001{
            let result = nettoPercent[48]*Double(b!)
            return Int(round(result))
        }
        else if b! < 37001 && b! >= 36501{
            let result = nettoPercent[49]*Double(b!)
            return Int(round(result))
        }
        else if b! < 37501 && b! >= 37001{
            let result = nettoPercent[50]*Double(b!)
            return Int(round(result))
        }
        else if b! < 38001 && b! >= 37501{
            let result = nettoPercent[51]*Double(b!)
            return Int(round(result))
        }
        else if b! < 38501 && b! >= 38001{
            let result = nettoPercent[52]*Double(b!)
            return Int(round(result))
        }
        else if b! < 39001 && b! >= 38501{
            let result = nettoPercent[53]*Double(b!)
            return Int(round(result))
        }
        else if b! < 39501 && b! >= 39001{
            let result = nettoPercent[54]*Double(b!)
            return Int(round(result))
        }
        else if b! < 40001 && b! >= 39501{
            let result = nettoPercent[55]*Double(b!)
            return Int(round(result))
        }
        else if b! < 40501 && b! >= 40001{
            let result = nettoPercent[56]*Double(b!)
            return Int(round(result))
        }
        else if b! < 41001 && b! >= 40501{
            let result = nettoPercent[57]*Double(b!)
            return Int(round(result))
        }
        else if b! < 41501 && b! >= 41001{
            let result = nettoPercent[58]*Double(b!)
            return Int(round(result))
        }
        else if b! < 42001 && b! >= 41501{
            let result = nettoPercent[59]*Double(b!)
            return Int(round(result))
        }
        else if b! < 42501 && b! >= 42001{
            let result = nettoPercent[60]*Double(b!)
            return Int(round(result))
        }
        else if b! < 43001 && b! >= 42501{
            let result = nettoPercent[61]*Double(b!)
            return Int(round(result))
        }
        else if b! < 43501 && b! >= 43001{
            let result = nettoPercent[62]*Double(b!)
            return Int(round(result))
        }
        else if b! < 44001 && b! >= 43501{
            let result = nettoPercent[63]*Double(b!)
            return Int(round(result))
        }
        else if b! < 44501 && b! >= 44001{
            let result = nettoPercent[64]*Double(b!)
            return Int(round(result))
        }
        else if b! < 45001 && b! >= 44501{
            let result = nettoPercent[65]*Double(b!)
            return Int(round(result))
        }else if b! < 45501 && b! >= 45001{
            let result = nettoPercent[66]*Double(b!)
            return Int(round(result))
        }
        else if b! < 46001 && b! >= 45501{
            let result = nettoPercent[67]*Double(b!)
            return Int(round(result))
        }
        else if b! < 46501 && b! >= 46001{
            let result = nettoPercent[68]*Double(b!)
            return Int(round(result))
        }
        else if b! < 47001 && b! >= 46501{
            let result = nettoPercent[69]*Double(b!)
            return Int(round(result))
        }
        else if b! < 47501 && b! >= 47001{
            let result = nettoPercent[70]*Double(b!)
            return Int(round(result))
        }
        else if b! < 48001 && b! >= 47501{
            let result = nettoPercent[71]*Double(b!)
            return Int(round(result))
        }
        else if b! < 48501 && b! >= 48001{
            let result = nettoPercent[72]*Double(b!)
            return Int(round(result))
        }
        else if b! < 49001 && b! >= 48501{
            let result = nettoPercent[73]*Double(b!)
            return Int(round(result))
        }
        else if b! < 49501 && b! >= 49001{
            let result = nettoPercent[74]*Double(b!)
            return Int(round(result))
        }
        else if b! < 50001 && b! >= 49501{
            let result = nettoPercent[75]*Double(b!)
            return Int(round(result))
        }
        else if b! < 50501 && b! >= 50001{
            let result = nettoPercent[76]*Double(b!)
            return Int(round(result))
        }
        else if b! < 51001 && b! >= 50501{
            let result = nettoPercent[77]*Double(b!)
            return Int(round(result))
        }
        else if b! < 51501 && b! >= 51001{
            let result = nettoPercent[78]*Double(b!)
            return Int(round(result))
        }
        else if b! < 52001 && b! >= 51501{
            let result = nettoPercent[79]*Double(b!)
            return Int(round(result))
        }
        else if b! < 52501 && b! >= 52001{
            let result = nettoPercent[80]*Double(b!)
            return Int(round(result))
        }
        else if b! < 53001 && b! >= 52501{
            let result = nettoPercent[81]*Double(b!)
            return Int(round(result))
        }
        else if b! < 53501 && b! >= 53001{
            let result = nettoPercent[82]*Double(b!)
            return Int(round(result))
        }
        else if b! < 54001 && b! >= 53501{
            let result = nettoPercent[83]*Double(b!)
            return Int(round(result))
        }
        else if b! < 54501 && b! >= 54001{
            let result = nettoPercent[84]*Double(b!)
            return Int(round(result))
        }
        else if b! < 55001 && b! >= 54501{
            let result = nettoPercent[85]*Double(b!)
            return Int(round(result))
        }
        else if b! < 55501 && b! >= 55001{
            let result = nettoPercent[86]*Double(b!)
            return Int(round(result))
        }
        else if b! < 56001 && b! >= 55501{
            let result = nettoPercent[87]*Double(b!)
            return Int(round(result))
        }
        else if b! < 56501 && b! >= 56001{
            let result = nettoPercent[88]*Double(b!)
            return Int(round(result))
        }
        else if b! < 57001 && b! >= 56501{
            let result = nettoPercent[89]*Double(b!)
            return Int(round(result))
        }
        else if b! < 57501 && b! >= 57001{
            let result = nettoPercent[90]*Double(b!)
            return Int(round(result))
        }
        else if b! < 58001 && b! >= 57501{
            let result = nettoPercent[91]*Double(b!)
            return Int(round(result))
        }
        else if b! < 58501 && b! >= 58001{
            let result = nettoPercent[92]*Double(b!)
            return Int(round(result))
        }
        else if b! < 59001 && b! >= 58501{
            let result = nettoPercent[93]*Double(b!)
            return Int(round(result))
        }
        else if b! < 59501 && b! >= 59001{
            let result = nettoPercent[94]*Double(b!)
            return Int(round(result))
        }
        else if b! < 60001 && b! >= 59001{
            let result = nettoPercent[95]*Double(b!)
            return Int(round(result))
        }
        else if b! < 60501 && b! >= 60001{
            let result = nettoPercent[96]*Double(b!)
            return Int(round(result))
        }
        else if b! < 61001 && b! >= 60501{
            let result = nettoPercent[97]*Double(b!)
            return Int(round(result))
        }
        else if b! < 61501 && b! >= 61001{
            let result = nettoPercent[98]*Double(b!)
            return Int(round(result))
        }
        else if b! < 62001 && b! >= 61501{
            let result = nettoPercent[99]*Double(b!)
            return Int(round(result))
        }
        else if b! < 62501 && b! >= 62001{
            let result = nettoPercent[100]*Double(b!)
            return Int(round(result))
        }
        else if b! < 63001 && b! >= 62501{
            let result = nettoPercent[101]*Double(b!)
            return Int(round(result))
        }else if b! < 63501 && b! >= 63001{
            let result = nettoPercent[102]*Double(b!)
            return Int(round(result))
        }else if b! < 64001 && b! >= 63501{
            let result = nettoPercent[103]*Double(b!)
            return Int(round(result))
        }else if b! < 64501 && b! >= 64001{
            let result = nettoPercent[104]*Double(b!)
            return Int(round(result))
        }else if b! < 65001 && b! >= 64501{
            let result = nettoPercent[105]*Double(b!)
            return Int(round(result))
        }else if b! < 65501 && b! >= 65001{
            let result = nettoPercent[106]*Double(b!)
            return Int(round(result))
        }else if b! < 66001 && b! >= 65501{
            let result = nettoPercent[107]*Double(b!)
            return Int(round(result))
        }else if b! < 66501 && b! >= 66001{
            let result = nettoPercent[108]*Double(b!)
            return Int(round(result))
        }else if b! < 67001 && b! >= 66501{
            let result = nettoPercent[109]*Double(b!)
            return Int(round(result))
        }else if b! < 67501 && b! >= 67001{
            let result = nettoPercent[110]*Double(b!)
            return Int(round(result))
        }else if b! < 68001 && b! >= 67501{
            let result = nettoPercent[111]*Double(b!)
            return Int(round(result))
        }else if b! < 68501 && b! >= 68001{
            let result = nettoPercent[112]*Double(b!)
            return Int(round(result))
        }else if b! < 69001 && b! >= 68501{
            let result = nettoPercent[113]*Double(b!)
            return Int(round(result))
        }else if b! < 69501 && b! >= 69001{
            let result = nettoPercent[114]*Double(b!)
            return Int(round(result))
        }else if b! < 70001 && b! >= 69501{
            let result = nettoPercent[115]*Double(b!)
            return Int(round(result))
        }else if b! < 70501 && b! >= 70001{
            let result = nettoPercent[116]*Double(b!)
            return Int(round(result))
        }else if b! < 71001 && b! >= 70501{
            let result = nettoPercent[117]*Double(b!)
            return Int(round(result))
        }else if b! < 71501 && b! >= 71001{
            let result = nettoPercent[118]*Double(b!)
            return Int(round(result))
        }else if b! < 72001 && b! >= 71501{
            let result = nettoPercent[119]*Double(b!)
            return Int(round(result))
        }else if b! < 72501 && b! >= 72001{
            let result = nettoPercent[120]*Double(b!)
            return Int(round(result))
        }else if b! < 73001 && b! >= 72501{
            let result = nettoPercent[121]*Double(b!)
            return Int(round(result))
        }else if b! < 73501 && b! >= 73001{
            let result = nettoPercent[122]*Double(b!)
            return Int(round(result))
        }else if b! < 74001 && b! >= 73501{
            let result = nettoPercent[123]*Double(b!)
            return Int(round(result))
        }else if b! < 74501 && b! >= 74001{
            let result = nettoPercent[124]*Double(b!)
            return Int(round(result))
        }else if b! < 75001 && b! >= 74501{
            let result = nettoPercent[125]*Double(b!)
            return Int(round(result))
        }else if b! < 75501 && b! >= 75001{
            let result = nettoPercent[126]*Double(b!)
            return Int(round(result))
        }else if b! < 76001 && b! >= 75501{
            let result = nettoPercent[127]*Double(b!)
            return Int(round(result))
        }else if b! < 76501 && b! >= 76001{
            let result = nettoPercent[128]*Double(b!)
            return Int(round(result))
        }else if b! < 77001 && b! >= 76501{
            let result = nettoPercent[129]*Double(b!)
            return Int(round(result))
        }else if b! < 77501 && b! >= 77001{
            let result = nettoPercent[130]*Double(b!)
            return Int(round(result))
        }else if b! < 78001 && b! >= 77501{
            let result = nettoPercent[131]*Double(b!)
            return Int(round(result))
        }else if b! < 78501 && b! >= 78001{
            let result = nettoPercent[132]*Double(b!)
            return Int(round(result))
        }else if b! < 79001 && b! >= 78501{
            let result = nettoPercent[133]*Double(b!)
            return Int(round(result))
        }else if b! < 79501 && b! >= 79001{
            let result = nettoPercent[134]*Double(b!)
            return Int(round(result))
        }else if b! < 80001 && b! >= 79501{
            let result = nettoPercent[135]*Double(b!)
            return Int(round(result))
        }else if b! < 80501 && b! >= 80001{
            let result = nettoPercent[136]*Double(b!)
            return Int(round(result))
        }else if b! < 81001 && b! >= 80501{
            let result = nettoPercent[137]*Double(b!)
            return Int(round(result))
        }else if b! < 81501 && b! >= 81001{
            let result = nettoPercent[138]*Double(b!)
            return Int(round(result))
        }else if b! < 82001 && b! >= 81501{
            let result = nettoPercent[139]*Double(b!)
            return Int(round(result))
        }else if b! < 82501 && b! >= 82001{
            let result = nettoPercent[140]*Double(b!)
            return Int(round(result))
        }else if b! < 83001 && b! >= 82501{
            let result = nettoPercent[141]*Double(b!)
            return Int(round(result))
        }else if b! < 83501 && b! >= 83001{
            let result = nettoPercent[142]*Double(b!)
            return Int(round(result))
        }else if b! < 84001 && b! >= 83501{
            let result = nettoPercent[143]*Double(b!)
            return Int(round(result))
        }else if b! < 84501 && b! >= 84001{
            let result = nettoPercent[144]*Double(b!)
            return Int(round(result))
        }else if b! < 85001 && b! >= 84501{
            let result = nettoPercent[145]*Double(b!)
            return Int(round(result))
        }else if b! < 85501 && b! >= 85001{
            let result = nettoPercent[146]*Double(b!)
            return Int(round(result))
        }else if b! < 86001 && b! >= 85501{
            let result = nettoPercent[147]*Double(b!)
            return Int(round(result))
        }else if b! < 86501 && b! >= 86001{
            let result = nettoPercent[148]*Double(b!)
            return Int(round(result))
        }else if b! < 87001 && b! >= 86501{
            let result = nettoPercent[149]*Double(b!)
            return Int(round(result))
        }else if b! < 87501 && b! >= 87001{
            let result = nettoPercent[150]*Double(b!)
            return Int(round(result))
        }else if b! < 88001 && b! >= 87501{
            let result = nettoPercent[151]*Double(b!)
            return Int(round(result))
        }else if b! < 88501 && b! >= 88001{
            let result = nettoPercent[152]*Double(b!)
            return Int(round(result))
        }else if b! < 89001 && b! >= 88501{
            let result = nettoPercent[153]*Double(b!)
            return Int(round(result))
        }else if b! < 89501 && b! >= 89001{
            let result = nettoPercent[154]*Double(b!)
            return Int(round(result))
        }else if b! < 90001 && b! >= 89501{
            let result = nettoPercent[155]*Double(b!)
            return Int(round(result))
        }else if b! < 90501 && b! >= 90001{
            let result = nettoPercent[156]*Double(b!)
            return Int(round(result))
        }else if b! < 91001 && b! >= 90501{
            let result = nettoPercent[157]*Double(b!)
            return Int(round(result))
        }else if b! < 91501 && b! >= 91001{
            let result = nettoPercent[158]*Double(b!)
            return Int(round(result))
        }else if b! < 92001 && b! >= 91501{
            let result = nettoPercent[159]*Double(b!)
            return Int(round(result))
        }else if b! < 92501 && b! >= 92001{
            let result = nettoPercent[160]*Double(b!)
            return Int(round(result))
        }else if b! < 93001 && b! >= 92501{
            let result = nettoPercent[161]*Double(b!)
            return Int(round(result))
        }else if b! < 93501 && b! >= 93001{
            let result = nettoPercent[162]*Double(b!)
            return Int(round(result))
        }else if b! < 94001 && b! >= 93501{
            let result = nettoPercent[163]*Double(b!)
            return Int(round(result))
        }else if b! < 94501 && b! >= 94001{
            let result = nettoPercent[164]*Double(b!)
            return Int(round(result))
        }else if b! < 95001 && b! >= 94501{
            let result = nettoPercent[165]*Double(b!)
            return Int(round(result))
        }else if b! < 95501 && b! >= 95001{
            let result = nettoPercent[166]*Double(b!)
            return Int(round(result))
        }else if b! < 96001 && b! >= 95501{
            let result = nettoPercent[167]*Double(b!)
            return Int(round(result))
        }else if b! < 96501 && b! >= 96001{
            let result = nettoPercent[168]*Double(b!)
            return Int(round(result))
        }else if b! < 97001 && b! >= 96501{
            let result = nettoPercent[169]*Double(b!)
            return Int(round(result))
        }else if b! < 97501 && b! >= 97001{
            let result = nettoPercent[170]*Double(b!)
            return Int(round(result))
        }else if b! < 98001 && b! >= 97501{
            let result = nettoPercent[171]*Double(b!)
            return Int(round(result))
        }else if b! < 98501 && b! >= 98001{
            let result = nettoPercent[172]*Double(b!)
            return Int(round(result))
        }else if b! < 99001 && b! >= 98501{
            let result = nettoPercent[173]*Double(b!)
            return Int(round(result))
        }else if b! < 99501 && b! >= 99001{
            let result = nettoPercent[174]*Double(b!)
            return Int(round(result))
        }else if b! < 100001 && b! >= 99501{
            let result = nettoPercent[175]*Double(b!)
            return Int(round(result))
        }else if b! < 100501 && b! >= 100001{
            let result = nettoPercent[176]*Double(b!)
            return Int(round(result))
        }else if b! < 101001 && b! >= 100501{
            let result = nettoPercent[177]*Double(b!)
            return Int(round(result))
        }else
        {
            let result = 0
            return Int(result)
        }
    }
    
    
}
