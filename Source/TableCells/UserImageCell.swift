//
//  UserImageCell.swift
//  Venga
//
//  Created by David Richards on 6/22/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import SnapKit

open class UserImageCell: UITableViewCell {
    
    let userImage = UIImageView()

    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Make the select color none
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        // setup the placement of the photo
        self.contentView.addSubview(self.userImage)
        self.userImage.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(LibConst.profileImageHeight)
            make.width.equalTo(LibConst.profileImageWidth)
            make.center.equalTo(self.contentView)
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
