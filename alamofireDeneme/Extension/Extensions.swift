//
//  Extensions.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 11.09.2023.
//

import Foundation
import UIKit

class TableDataSourceDelegate: NSObject, UITableViewDataSource, UITableViewDelegate {
    var viewController: ViewController?
    
    init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewController?.performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewController?.drinkList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewController = viewController else {
            return UITableViewCell()
        }
        let drinkList = viewController.drinkList
        
        let liste = drinkList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
        
        if let imageURL = URL(string: liste.strDrinkThumb!) {
            URLSession.shared.dataTask(with: imageURL) { data, _, error in
                if let error = error {
                    print("Resim yükleme hatası: \(error.localizedDescription)")
                } else if let data = data {
                    DispatchQueue.main.async {
                        cell.drinkImage.image = UIImage(data: data)
                    }
                }
            }.resume()
        }

        cell.drinkLabel.text = liste.strDrink!
        cell.backgroundColor = UIColor.darkGray
        cell.strAlcoholic.text = liste.strAlcoholic!
        cell.strGlass.text = liste.strGlass!
        return cell
    }
    
}
