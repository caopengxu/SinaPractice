//
//  VisitorController.swift
//  SinaPractice
//
//  Created by caopengxu on 2018/3/16.
//  Copyright © 2018年 caopengxu. All rights reserved.
//

import UIKit

class VisitorController: UIViewController {

    var isLogin = false
    var visitorView: VisitorView?
    
    
    // loadView
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


// MARK: === 创建访客视图
extension VisitorController
{
    private func setupVisitorView()
    {
        visitorView = VisitorView.visitorView()
        view = visitorView
    }
}


