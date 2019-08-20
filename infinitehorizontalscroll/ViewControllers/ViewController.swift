//
//  ViewController.swift
//  infinitehorizontalscroll
//
//  Created by Mauricio Guzmán Salazar on 8/7/19.
//  Copyright © 2019 Mauricio Guzmán Salazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var infiniteGrid: InfiniteGrid?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.infiniteGrid = InfiniteGrid(hostView: self.view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        infiniteGrid?.scrollToCenter()
    }


}

