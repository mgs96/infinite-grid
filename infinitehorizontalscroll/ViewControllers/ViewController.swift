//
//  ViewController.swift
//  infinitehorizontalscroll
//
//  Created by Mauricio Guzmán Salazar on 8/7/19.
//  Copyright © 2019 Mauricio Guzmán Salazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let layout = UICollectionViewLayout()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        _ = InfiniteGrid(hostView: self.view)
    }


}

