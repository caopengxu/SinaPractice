//
//  DiscoverController.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class DiscoverController: VisitorController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName: "visitordiscover_image_message", title: "登录后，最新、最热微博尽在掌握，不再会与实事潮流擦肩而过")
        }
    }

    
}
