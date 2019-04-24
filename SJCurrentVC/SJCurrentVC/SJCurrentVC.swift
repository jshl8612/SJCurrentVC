//
//  UIViewController+CurrentVC.swift
//  testMVVM+FlowCoordinator
//
//  Created by Shenglong Jiang on 11/04/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import UIKit

struct SJCurrentVC {
    static var currentVC: UIViewController? {
        if let rootVC = UIApplication.shared.keyWindow?.rootViewController {
            return rootVC.currentViewController
        }
        
        return nil
    }
    
    static var currentNavi: UINavigationController? {
        if let rootVC = UIApplication.shared.keyWindow?.rootViewController {
            return rootVC.currentNavigationController
        }
        
        return nil
    }
}

extension UIViewController {
    fileprivate var currentViewController: UIViewController? {
        switch self {
        case let vc as UITabBarController:
            return vc.selectedViewController?.currentViewController
        case let vc as UINavigationController:
            return vc.topViewController?.currentViewController
        default:
            return self.presentedViewController ?? self
        }
    }
    
    fileprivate var currentNavigationController: UINavigationController? {
        switch self {
        case let vc as UITabBarController:
            return vc.selectedViewController?.currentNavigationController
        case let vc as UINavigationController:
            return vc
        default:
            return self.navigationController
        }
    }
}
