//
//  ViewController2.swift
//  Create a Drink
//
//  Created by Claire Cho on 4/24/19.
//  Copyright © 2019 Claire Cho. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    let topIndex = IndexPath(row: 0, section: 0)
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var table: UITableView!
    
    var ingredientArray = [Ingredients]()
    var currentIngredientArray = [Ingredients]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIngredients()
        setUpSearchBar()
        alterLayout()
        searchBar.backgroundImage = UIImage()
        

    }
    
    private func setupIngredients() {
        ingredientArray.append(Ingredients(name: "Apple", image : #imageLiteral(resourceName: "apple"), ingredientColor : #colorLiteral(red: 1, green: 0.8758712132, blue: 0.6862415817, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Banana", image : #imageLiteral(resourceName: "banana"), ingredientColor : #colorLiteral(red: 0.9764705896, green: 0.9443702147, blue: 0.3245594026, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Blackberry", image : #imageLiteral(resourceName: "blackberry"), ingredientColor : #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Blueberry", image : #imageLiteral(resourceName: "blueberry"), ingredientColor : #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Cherry", image : #imageLiteral(resourceName: "cherry"), ingredientColor : #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Orange", image : #imageLiteral(resourceName: "orange"), ingredientColor : #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Pineapple", image : #imageLiteral(resourceName: "pineapple"), ingredientColor : #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Raspberry", image : #imageLiteral(resourceName: "raspberry"), ingredientColor : #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Strawberry", image : #imageLiteral(resourceName: "strawberry"), ingredientColor : #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
        ingredientArray.append(Ingredients(name: "Watermelon", image : #imageLiteral(resourceName: "watermelon"), ingredientColor : #colorLiteral(red: 0.9254902005, green: 0.593979786, blue: 0.5904259179, alpha: 1)))
        currentIngredientArray = ingredientArray
        
    }
    
    private func setUpSearchBar() {
        searchBar.delegate = self
    }
    
    func alterLayout() {
        searchBar.placeholder = "Search Ingredient"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentIngredientArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else {
            return UITableViewCell()
        }
        cell.nameLbl.text = currentIngredientArray[indexPath.row].name
        cell.imgView.setImage(currentIngredientArray[indexPath.row].image, for: .normal)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        currentIngredientArray = ingredientArray.filter({ ingredient -> Bool in
            if searchText.isEmpty { return true }
            return ingredient.name.lowercased().contains(searchText.lowercased())
            
        })
        table.reloadData()
        table.scrollToRow(at: topIndex, at: .top, animated: false)
//        table.scroll(to: .top, animated: true) ------> Used for the other method for scrolling to the top

    }
    
}

class Ingredients {
    let name: String
    let image: UIImage
    let ingredientColor: UIColor
    
    init(name: String, image: UIImage, ingredientColor: UIColor) {
        self.name = name
        self.image = image
        self.ingredientColor = ingredientColor
        
    }
    
}

/* ---- Another method for scrolling to top ----
extension UITableView {
    public func reloadData(_ completion: @escaping ()->()) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }, completion:{ _ in
            completion()
        })
    }

    func scroll(to: scrollsTo, animated: Bool) {
        let numberOfSections = self.numberOfSections
        let numberOfRows = self.numberOfRows(inSection: numberOfSections-1)
        switch to{
        case .top:
            if numberOfRows > 0 {
                let indexPath = IndexPath(row: 0, section: 0)
                self.scrollToRow(at: indexPath, at: .top, animated: animated)
            }
            break
        case .bottom:
            if numberOfRows > 0 {
                let indexPath = IndexPath(row: numberOfRows-1, section: (numberOfSections-1))
                self.scrollToRow(at: indexPath, at: .bottom, animated: animated)
            }
            break
        }
    }

    enum scrollsTo {
        case top,bottom
    }
}
*/
