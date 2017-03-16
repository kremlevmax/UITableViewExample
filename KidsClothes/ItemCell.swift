//
//  ItemCell.swift
//  KidsClothes
//
//  Created by Сервис on 17/03/2017.
//  Copyright © 2017 Kremlev. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var itemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(itemCellValue: ItemCellValue){
        itemTitle.text = itemCellValue.itemTitle
    }

}
