//
//  Navi.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class DrNavi: UINavigationController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.isTranslucent = true
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.tintColor = .white
        UIApplication.shared.statusBarStyle = .lightContent
        
    }
    
    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
