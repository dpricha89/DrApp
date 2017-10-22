//
//  Loading.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import JGProgressHUD

open class Loading: NSObject {
    
    let hud: JGProgressHUD = JGProgressHUD.init(style: .extraLight)
    
    open func start(view: UIView) {
        hud.textLabel.text = "Loading..."
        hud.show(in: view)
    }
    
    open func stop() {
        hud.dismiss()
    }
}
