//
//  BasicImageCell.swift
//  Venga
//
//  Created by David Richards on 7/22/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import SnapKit

open class BasicImageCell: UITableViewCell {
    
    let basicImage = UIImageView()
    let basicLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
     
        // Make the select color none
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        self.contentView.addSubview(self.basicImage)
        self.basicImage.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(self.contentView).offset(5)
        }
        
        self.contentView.addSubview(self.basicLabel)
        self.basicLabel.textColor = .white
        self.basicLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(self.basicImage.snp.right).offset(10)
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
