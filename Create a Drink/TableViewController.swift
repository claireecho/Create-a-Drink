//
//  TableViewController.swift
//  Create a Drink
//
//  Created by Claire Cho on 4/20/19.
//  Copyright © 2019 Claire Cho. All rights reserved.
//

import UIKit
var ingredient = ""
struct cellData {
    
    let cell : Int!
    let image : UIImage!
    let label : String!
    let color : UIColor!
    let type : String!
    let ingredientColor : UIColor!
    
}

class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        arrayOfCellData = [cellData(cell : 1, image : #imageLiteral(resourceName: "apple"), label : "Apple", color : #colorLiteral(red: 0.970673382, green: 0.7970152738, blue: 0.8244020901, alpha: 1), type : "apple", ingredientColor : #colorLiteral(red: 1, green: 0.3113977491, blue: 0.2768607729, alpha: 1)),
                           cellData(cell : 1, image : #imageLiteral(resourceName: "banana"), label : "Banana", color : #colorLiteral(red: 1, green: 0.8210952197, blue: 0.8493094643, alpha: 1), type : "banana", ingredientColor : #colorLiteral(red: 0.9764705896, green: 0.9443702147, blue: 0.3245594026, alpha: 1)),
                           cellData(cell : 1, image : #imageLiteral(resourceName: "cherry"), label : "Cherry", color : #colorLiteral(red: 0.970673382, green: 0.7970152738, blue: 0.8244020901, alpha: 1), type : "cherry", ingredientColor : #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)),
                           cellData(cell : 1, image : #imageLiteral(resourceName: "strawberry"), label : "Strawberry", color : #colorLiteral(red: 1, green: 0.8210952197, blue: 0.8493094643, alpha: 1), type : "strawberry", ingredientColor : #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
        cell.mainImageView.setImage(arrayOfCellData[indexPath.row].image, for: .normal)
        cell.mainLabel.text = arrayOfCellData[indexPath.row].label
        cell.backgroundColor = arrayOfCellData[indexPath.row].color
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 207
    }
}
