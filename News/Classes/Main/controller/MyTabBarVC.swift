//
//  MyTabBarVC.swift
//  News
//
//  Created by 邹超 on 2020/3/17.
//  Copyright © 2020 newcloudnet. All rights reserved.
//

import UIKit

class MyTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC()
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245 / 255.0, green: 90 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        setValue(MyTabBar(), forKey: "tabBar")
        // Do any additional setup after loading the view.
    }
    
    func addChildVC(){
        setChildVC(HomeVC(), title: "首页", imageName: "home_tabbar_32x32_", selectedImageName: "home_tabbar_press_32x32_")
        setChildVC(VideoVC(), title: "视频", imageName: "video_tabbar_32x32_", selectedImageName: "video_tabbar_press_32x32_")
        setChildVC(HuoShanVC(), title: "小视频", imageName: "huoshan_tabbar_32x32_", selectedImageName: "huoshan_tabbar_press_32x32_")
        setChildVC(MineVC(), title: "我的", imageName: "mine_tabbar_32x32_", selectedImageName: "mine_tabbar_press_32x32_")
    }
    
    func setChildVC(_ childController:UIViewController,title:String,imageName:String,selectedImageName:String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childController.title = title
        let nav = MyNavigationVC(rootViewController: childController)
        self.addChild(nav)
    }

}
