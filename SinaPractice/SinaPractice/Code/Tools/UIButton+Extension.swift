//
//  UIButton+Extension.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import Foundation
import UIKit


extension UIButton
{
    convenience init(imageName: String, backgroundImageName: String)
    {
        self.init()
        
        setImage(UIImage(named: "tabbar_compose_icon_add"), for: UIControlState.normal)
        setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: UIControlState.highlighted)
        setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: UIControlState.normal)
        setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: UIControlState.highlighted)
        
        sizeToFit()
    }
}


