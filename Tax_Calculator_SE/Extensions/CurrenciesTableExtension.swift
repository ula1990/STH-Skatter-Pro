//
//  CurrenciesTableExtension.swift
//  Tax_Calculator_SE
//
//  Created by Uladzislau Daratsiuk on 15/05/2018.
//  Copyright © 2018 Ulad Daratsiuk. All rights reserved.
//

import UIKit

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.currenciesTable{
        return receivedTitle.count
        }else{
            return menuList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if tableView == self.currenciesTable{
        let title = receivedTitle[indexPath.row]
        let rates = currentAmount[indexPath.row]
        let ratesInfo = receivedRates[indexPath.row]
        
        let cell = currenciesTable.dequeueReusableCell(withIdentifier: currencieCellId) as! CurrencieCell
        cell.updateCellData(rate: ratesInfo, currencyTitle: title, amount: (formatter.string(from:rates as NSNumber))!)
        formatter.numberStyle = .decimal
        return cell
         }else{
            let title = menuList[indexPath.row]
            let cell = menuTable.dequeueReusableCell(withIdentifier: menuCellId) as! MenuCell
            cell.backgroundColor = UIColor.white.withAlphaComponent(0)
            cell.menuLabel.text = title
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == self.currenciesTable{
            currenciesTable.deselectRow(at: indexPath, animated: true)
        }else{
            menuTable.deselectRow(at: indexPath, animated: true)
        }
    }
    
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let closeAction = UIContextualAction(style: .normal, title:  "Close", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            
            let cell = self.currenciesTable.cellForRow(at: indexPath) as! CurrencieCell
            UIPasteboard.general.string = cell.amountLabel.text
            
            success(true)
        })
        closeAction.title = "Copy"
        closeAction.backgroundColor = .orange
        
        return UISwipeActionsConfiguration(actions: [closeAction])
    }
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.currenciesTable{
            return 40
        }else{
            return 60
        }
    }
}
