//
//  ViewController.swift
//  KidsClothes
//
//  Created by Сервис on 15/03/2017.
//  Copyright © 2017 Kremlev. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var itemCellValues = [ItemCellValue]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let itc1 = ItemCellValue(itemImageURL: "http://g01.a.alicdn.com/kf/HTB1j4WWKXXXXXaNapXXq6xXFXXX8/2016-New-Style-font-b-Girls-b-font-font-b-Jeans-b-font-Kids-Clothing-Pants.jpg", itemTitle: "Blue Jeans", itemVideoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9Paw3VsyEu8\" frameborder=\"0\" allowfullscreen></iframe>")
        itemCellValues.append(itc1)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCellValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as? ItemCell {
            cell.updateUI(itemCellValue: itemCellValues[indexPath.row])
            return cell
            
        } else {
            return UITableViewCell()
        }
    }


}

