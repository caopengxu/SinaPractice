//
//  VisitorView.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class VisitorView: UIView {

    /// 注册按钮
    @IBOutlet weak var registerButton: UIButton!
    /// 登录按钮
    @IBOutlet weak var loginButton: UIButton!
    /// 转盘
    @IBOutlet weak var rotationImageView: UIImageView!
    /// 图标
    @IBOutlet weak var iconImageView: UIImageView!
    /// 文本标签
    @IBOutlet weak var titleLabel: UILabel!
    
    
    // 外部创建方法
    class func visitorView() ->VisitorView
    {
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.last as! VisitorView
    }
}


// MARK: === 界面显示数据
extension VisitorView
{
    // 外部
    func setupVisitorInfo(imageName: String?, title: String)
    {
        titleLabel.text = title
        
        guard let imageName = imageName else
        {
            startAniamtion()
            
            return
        }
        
        rotationImageView.isHighlighted = true
        iconImageView.image = UIImage(named: imageName)
    }
    
}


// MARK: === 转盘动画效果
extension VisitorView
{
    // 内部
    fileprivate func startAniamtion()
    {
        let anim = CABasicAnimation(keyPath: "transform.rotation")
        
        anim.toValue = 2.0 * .pi
        anim.duration = 5.0
        anim.repeatCount = MAXFLOAT
        
        // 注意: 默认情况下只要视图消失, 系统就会自动移除动画
        // 只要设置removedOnCompletion为false, 系统就不会移除动画
        anim.isRemovedOnCompletion = false
        
        rotationImageView.layer.add(anim, forKey: nil)
    }
}


