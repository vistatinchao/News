//
//  MyTabBar.swift
//  News
//
//  Created by 邹超 on 2020/3/17.
//  Copyright © 2020 newcloudnet. All rights reserved.
//

import UIKit

class MyTabBar: UITabBar {
    
    private lazy var publishBtn:UIButton = {
        let publishBtn = UIButton(type: .custom)
        publishBtn.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .normal)
        publishBtn.setBackgroundImage(UIImage(named: "feed_publish_press_44x44_"), for: .selected)
        publishBtn.sizeToFit()
        return publishBtn
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(publishBtn)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let width = frame.width
        let height = frame.height
        publishBtn.center = CGPoint(x: width*0.5, y: height*0.5-8)
        let buttonW = width*0.2
        let buttonH = height
        var buttonX:CGFloat = 0.0
        let buttonY:CGFloat = 0.0
        var index = 0
        for button in subviews {
            if !button .isKind(of: NSClassFromString("UITabBarButton")!) {
                continue
            }
            buttonX = buttonW * (index>1 ? CGFloat(index+1):CGFloat(index))
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            index+=1
        }
    }

}
