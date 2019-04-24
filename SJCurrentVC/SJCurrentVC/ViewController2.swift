//
//  ViewController2.swift
//  testMVVM+FlowCoordinator
//
//  Created by Shenglong Jiang on 11/04/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(SJCurrentVC.currentVC ?? "no view controller")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        //        print("presented : \(self.presentedViewController?.title)")
        //        print("presenting : \(self.presentingViewController?.title)")
    }
    

    
}
