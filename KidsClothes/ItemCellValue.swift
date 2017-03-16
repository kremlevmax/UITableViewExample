//
//  ItemCellValue.swift
//  KidsClothes
//
//  Created by Сервис on 17/03/2017.
//  Copyright © 2017 Kremlev. All rights reserved.
//

import Foundation

class ItemCellValue {
    private var _itemImageURL: String?
    private var _itemTitle: String?
    private var _itemVideoURL: String?
    
    
    var itemImageURL: String {
        return _itemImageURL!
    }
    
    var itemTitle: String {
        return _itemTitle!
    }
    
    var itemVideoURL: String {
        return _itemVideoURL!
    }
    
    
    init(itemImageURL: String, itemTitle: String, itemVideoURL: String) {
        _itemImageURL = itemImageURL
        _itemTitle = itemTitle
        _itemVideoURL = itemVideoURL
    }

}

