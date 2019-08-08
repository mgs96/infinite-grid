//
//  InfiniteGrid.swift
//  infinitehorizontalscroll
//
//  Created by Mauricio Guzmán Salazar on 8/7/19.
//  Copyright © 2019 Mauricio Guzmán Salazar. All rights reserved.
//

import Foundation
import UIKit

class InfiniteGrid: UICollectionView {
    
    let infiniteDataSource = InfiniteGridDataSource()
    
    convenience init(hostView: UIView) {
        self.init(frame: hostView.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.translatesAutoresizingMaskIntoConstraints = true
        self.backgroundColor = .clear
        
        self.dataSource = infiniteDataSource
        InfiniteGridCell.register(with: self)
        
        hostView.addSubview(self)
    }
}
