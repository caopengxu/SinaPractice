//
//  ProfileController.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class ProfileController: VisitorController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName: "visitordiscover_image_profile", title: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人")
        }
    }
}
