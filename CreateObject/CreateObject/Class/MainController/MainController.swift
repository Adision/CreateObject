//

//  MainController.swift
//  CreateObject
//
//  Created by Apple on 2017/2/10.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class MainController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor=UIColor.orange
        
        //添加子控制器
        addChildViewControllers()
    }
    func addChildViewControllers(){
        addChildViewController("OneController", title: "首页", imageName:"")
        addChildViewController("TwoController", title: "分类", imageName:"")
        addChildViewController("ThreeController", title: "发现", imageName:"")
        addChildViewController("FourController", title: "我的", imageName:"")
    }
    
    func addChildViewController(_ childController: String,title:String,imageName:String) {
        
        guard  let name = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            return
        }
        
        let cls:AnyClass?=NSClassFromString(name + "."+childController)
        guard let typeCls=cls as? UITableViewController.Type else {
            return
        }
        
        let childCtl=typeCls.init()
        childCtl.title=title;
        childCtl.tabBarItem.image=UIImage(named: "ic_radio_h")
        addChildViewController(childCtl)
        NJLog(childCtl)
    }
}
