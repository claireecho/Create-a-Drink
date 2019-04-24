//
//  ViewController2.swift
//  Create a Drink
//
//  Created by Claire Cho on 4/24/19.
//  Copyright © 2019 Claire Cho. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var table: UITableView!
    
    var ingredientArray = [Ingredients]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func setupIngredients() {
        ingredientArray.append(Ingredients(name: "Apple", image : #imageLiteral(resourceName: "apple"), color : #colorLiteral(red: 0.970673382, green: 0.7970152738, blue: 0.8244020901, alpha: 1), type : "apple", ingredientColor : #colorLiteral(red: 1, green: 0.3113977491, blue: 0.2768607729, alpha: 1)))
        
    }
}

class Ingredients {
    let name: String
    let image: UIImage
    let color: UIColor
    let type: String
    let ingredientColor: UIColor
    
    init(name: String, image: UIImage, color: UIColor, type: String, ingredientColor: UIColor) {
        self.name = name
        self.image = image
        self.color = color
        self.type = type
        self.ingredientColor = ingredientColor
        
    }
    
}
