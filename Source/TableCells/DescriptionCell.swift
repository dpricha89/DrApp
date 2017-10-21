//
//  SectionCell.swift
//  Venga
//
//  Created by David Richards on 5/6/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class DescriptionCell: UITableViewCell {
    
    let textDescription = UILabel()
    
    open override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Make the select color none
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        // image view and make it the same size at the cell
        self.textDescription.textColor = .white
        self.textDescription.numberOfLines = 0
        self.textDescription.sizeToFit()
        self.contentView.addSubview(self.textDescription)
        self.textDescription.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.contentView).offset(10)
            make.left.equalTo(self.contentView).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
            make.bottom.equalTo(self.contentView).offset(-10)
        }
    }
    
    open required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
