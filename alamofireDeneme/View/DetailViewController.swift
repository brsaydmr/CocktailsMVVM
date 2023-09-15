//
//  DetailViewController.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 15.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var materialsLabel: UILabel!
    @IBOutlet weak var drinkName: UILabel!
    
    var drinks:Drinks?

    override func viewDidLoad() {
        super.viewDidLoad()
        drinkName.text = drinks!.strDrink
        drinkImage.layer.cornerRadius = -100
        descriptionLabel.text = drinks!.strInstructions
        materialsLabel.text = "\(String(describing: drinks!.strMeasure1!)) \(String(describing: drinks!.strIngredient1!)),\(String(describing: drinks!.strMeasure2!)) \(String(describing: drinks!.strIngredient2!))"

        if let imageURL = URL(string: drinks!.strDrinkThumb!) {
            URLSession.shared.dataTask(with: imageURL) { data, _, error in
                if let error = error {
                    print("Resim yükleme hatası: \(error.localizedDescription)")
                } else if let data = data {
                    DispatchQueue.main.async {
                        self.drinkImage.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
        // Do any additional setup after loading the view.
    }
    

}

