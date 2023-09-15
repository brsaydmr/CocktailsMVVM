//
//  Drink.swift
//  alamofireDeneme
//
//  Created by Barış Aydemir on 6.09.2023.
//

import Foundation

class Drinks:Codable {
    var strDrink:String?
    var strDrinkThumb:String?
    var strCategory:String? //cocktail
    var strAlcoholic:String? //alkollü-alkolsüz
    var strGlass:String?  //bardak
    var strInstructions:String? //tarif
    var strIngredient1:String? //malzemeler
    var strIngredient2:String? //malzemeler
    var strIngredient3:String? //malzemeler
    var strIngredient4:String? //malzemeler
    var strIngredient5:String? //malzemeler
    var strMeasure1:String? //malzeme miktarı
    var strMeasure2:String? //malzeme miktarı
    var strMeasure3:String? //malzeme miktarı
    var strMeasure4:String? //malzeme miktarı
    
    init(strDrink: String? = nil, strDrinkThumb: String? = nil, strCategory: String? = nil, strAlcoholic: String? = nil, strGlass: String? = nil, strInstructions: String? = nil, strIngredient1: String? = nil, strIngredient2: String? = nil, strIngredient3: String? = nil, strIngredient4: String? = nil, strIngredient5: String? = nil, strMeasure1: String? = nil, strMeasure2: String? = nil, strMeasure3: String? = nil, strMeasure4: String? = nil) {
        self.strDrink = strDrink
        self.strDrinkThumb = strDrinkThumb
        self.strCategory = strCategory
        self.strAlcoholic = strAlcoholic
        self.strGlass = strGlass
        self.strInstructions = strInstructions
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
    }
    
    init() {
        
    }


}
