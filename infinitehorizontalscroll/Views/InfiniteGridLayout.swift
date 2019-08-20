//
//  InfiniteGridLayout.swift
//  infinitehorizontalscroll
//
//  Created by Mauricio Guzmán Salazar on 8/11/19.
//  Copyright © 2019 Mauricio Guzmán Salazar. All rights reserved.
//

import Foundation
import UIKit

class InfiniteGridLayout: UICollectionViewLayout {
    
    let gridSize = CGSize(width: 10000000.0, height: 10000000.0) // arbitrary size
    let tileSize = CGSize(width: 100.0, height: 100.0) // arbitrary size
    
    override var collectionViewContentSize: CGSize {
        return gridSize
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        // ignore rect for now, just return one cell at the center of the grid
        let itemAttributes = UICollectionViewLayoutAttributes(forCellWith: IndexPath(item: 0, section: 0))
        itemAttributes.frame = CGRect(x: (gridSize.width - tileSize.width) * 0.5, y: (gridSize.height - tileSize.height) * 0.5, width: tileSize.width, height: tileSize.height)
        return [itemAttributes]
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        // not supported
        return nil
    }
}
