//
//  ViewController.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 6.09.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var drinkList = [Drinks]()
    var dataSourceDelegate: TableDataSourceDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAllDrinks()
        
        dataSourceDelegate = TableDataSourceDelegate(viewController: self)
        
        tableView.delegate = dataSourceDelegate
        tableView.dataSource = dataSourceDelegate
        //tableView.backgroundColor = .darkGray
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.drinks = drinkList[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func getAllDrinks() {
        NetworkManager.shared.getAllDrinks { [weak self] drinks, error in
            if let drinks = drinks {
                self?.drinkList = drinks
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    
}



