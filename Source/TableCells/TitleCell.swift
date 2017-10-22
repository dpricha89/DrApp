//
//  TitleCell.swift
//  Venga
//
//  Created by David Richards on 7/22/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class TitleCell: UITableViewCell {
    
    let titleLabel = UILabel()

    open override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    open override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        self.titleLabel.textColor = LibConst.sectionTitleColor
        self.titleLabel.font = .systemFont(ofSize: 25)
        self.contentView.addSubview(self.titleLabel)
        titleLabel.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(LibConst.largeLabelhieght)
            make.left.equalTo(self.contentView).offset(LibConst.smallLeftOffset)
            make.bottom.equalTo(self.contentView)
        }
    }
}
