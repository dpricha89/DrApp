//
//  CalendarCell.swift
//  Venga
//
//  Created by David Richards on 7/22/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import FSCalendar

open class CalendarCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
