//
//  mainViewController.swift
//  Create a Drink
//
//  Created by Claire Cho on 4/25/19.
//  Copyright © 2019 Claire Cho. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    let drinksArray = [drinks]()
    var currentDrinksArray = [drinks]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

class drinks {
    let name: String
    let image: UIImage
    let descriptionLbl: String
    
    init(name: String, image: UIImage, descriptionLbl: String) {
        self.name = name
        self.image = image
        self.descriptionLbl = descriptionLbl
    }
}
