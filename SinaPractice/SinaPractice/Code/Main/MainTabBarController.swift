//
//  MainTabBarController.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    // 懒加载
    private lazy var composeButton = { () -> UIButton in
        var btn = UIButton(imageName: "tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")
        
        btn.addTarget(self, action: #selector(compseBtnClick), for: .touchUpInside)
        
        return btn
    }()
    
    
    // 界面显示前后
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBar.addSubview(composeButton)
        let rect = composeButton.frame
        let width = tabBar.bounds.width / CGFloat(childViewControllers.count)
        composeButton.frame = CGRect(x: width * 2, y: 0, width: width, height: rect.height)
    }
    
    
    // 点击加号按钮
    @objc fileprivate func compseBtnClick()
    {
        print("点击了加号")
    }
}


