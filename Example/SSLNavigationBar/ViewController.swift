//
//  ViewController.swift
//  SSLNavigationBar
//
//  Created by smilelu on 08/23/2016.
//  Copyright (c) 2016 smilelu. All rights reserved.
//

import UIKit
import SSLNavigationBar

class ViewController: SLBaseViewController {
    
    var nextBtn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SSLNavigationBar Demo"
        
        nextBtn = UIButton()
        nextBtn.setTitle("NextViewController", forState: UIControlState.Normal)
        nextBtn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        nextBtn.addTarget(self, action: #selector(nextAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.insertSubview(nextBtn, belowSubview: self.naviBar)
        
        self.setLayout()
    }
    
    func setLayout() -> Void {
        nextBtn.snp_makeConstraints { (make) in
            make.center.equalTo(self.view)
        }
    }
    
    override func initNaviBar() -> Void {
        super.initNaviBar()
        
        let leftItem : SLBarButtonItem = SLBarButtonItem(image: UIImage(named: "titlebar_user"), target: self, action: #selector(userClick(_:)))
        self.naviBar.leftItem = leftItem
    }
    
    func userClick(sender: SLBarButtonItem) -> Void {
        NSLog("LeftBarButtonItem Click!")
    }
    
    func nextAction(sender: UIButton) -> Void {
        let nextVC:NextViewController = NextViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

