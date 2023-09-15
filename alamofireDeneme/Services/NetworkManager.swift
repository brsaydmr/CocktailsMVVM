//
//  NetworkManager.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 11.09.2023.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func getAllDrinks(completion: @escaping ([Drinks]?, Error?) -> Void) {
        // Apis sınıfındaki URL'leri kullanarak isteği oluşturun
        let mainURL = Apies().main
        let mainApiURL = Apies().mainApi
        
        let requestURL = mainURL + mainApiURL
        
        Alamofire.request(requestURL, method: .get).responseJSON { response in
            if let data = response.data {
                do {
                    let cevap = try JSONDecoder().decode(DrinkAnswer.self, from: data)
                    if let gelenListe = cevap.drinks {
                        completion(gelenListe, nil)
                    }
                } catch {
                    completion(nil, error)
                }
            } else if let error = response.error {
                completion(nil, error)
            }
        }
    }
}
