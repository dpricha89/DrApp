//
//  VengaButton.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class VengaButton: UIButton {

    open override func layoutSubviews() {
        super.layoutSubviews()
        layoutRoundRectLayer()
    }
    
    private func layoutRoundRectLayer() {
        self.layer.cornerRadius = LibConst.cornerRadius
        self.titleLabel?.textColor = LibConst.buttonTextColor
    }

}
