//
//  UITabBarController.swift
//  WorldTrotter
//
//  Created by Rossi, Matthew Th on 2/6/19.
//  Copyright © 2019 Rossi, Matthew. All rights reserved.
//
import Foundation
import UIKit
class UITabBarController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        if let webViewController = getWebViewController() {
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
            webViewController.view.setNeedsLayout()
            )}
    }
}
}
