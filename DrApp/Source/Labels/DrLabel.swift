//
//  VengaLabel.swift
//  Venga
//
//  Created by David Richards on 7/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class DrLabel: UILabel {

    open override func layoutSubviews() {
        super.layoutSubviews()
        self.textColor = .white
    }
}
