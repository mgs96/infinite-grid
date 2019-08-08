//
//  InfiniteGridCell.swift
//  infinitehorizontalscroll
//
//  Created by Mauricio Guzmán Salazar on 8/7/19.
//  Copyright © 2019 Mauricio Guzmán Salazar. All rights reserved.
//

import Foundation
import UIKit

// https://itnext.io/infinite-grid-using-uicollectionview-155801e4f7f4

class InfiniteGridCell: UICollectionViewCell {
    
    private(set) var coordinates = GridCoordinates(x: 0, y: 0) {
        didSet { coordinatesLabel().text = "\(coordinates.x), \(coordinates.y)" }
    }
    
    static let identifier = "InfiniteGridCell"    
    
    static func register(with collectionView: UICollectionView) {
        collectionView.register(self, forCellWithReuseIdentifier: identifier)
    }
    
    static func dequeue(from collecectionView: UICollectionView, at indexPath: IndexPath, for coordinates: GridCoordinates) -> InfiniteGridCell {
        let cell = collecectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? InfiniteGridCell ?? InfiniteGridCell()
        cell.coordinates = coordinates
        return cell
    }
    
    private func coordinatesLabel() -> UILabel {
        if let label = self.contentView.subviews.first as? UILabel {
            return label
        }
        let label  = UILabel(frame: self.contentView.bounds)
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textColor = .darkGray
        label.textAlignment = .center
        label.minimumScaleFactor = 0.5
        label.adjustsFontSizeToFitWidth = true
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.translatesAutoresizingMaskIntoConstraints = true
        self.contentView.addSubview(label)
        return label
    }
}
