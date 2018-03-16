//
//  HomeController.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class HomeController: VisitorController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName: nil, title: "关注一些人，回这里看看有什么惊喜")
        }
    }
}


