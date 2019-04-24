//
//  ViewController.swift
//  testMVVM+FlowCoordinator
//
//  Created by Shenglong Jiang on 11/04/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        print(SJCurrentVC.currentVC)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    
    }

}

