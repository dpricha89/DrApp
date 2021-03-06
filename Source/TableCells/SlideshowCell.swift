//
//  SlideshowCell.swift
//  Venga
//
//  Created by David Richards on 7/22/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import SnapKit
import ImageSlideshow

open class SlideshowCell: UITableViewCell {
    
    let slideshow = ImageSlideshow()
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Make the select color none
        self.selectionStyle = .none
        //self.backgroundColor = .clear

        self.slideshow.zoomEnabled = true
        self.slideshow.pageControlPosition = .insideScrollView
        self.slideshow.slideshowInterval = 5
        
        // image view and make it the same size at the cell
        self.contentView.addSubview(self.slideshow)
        self.slideshow.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(self.contentView)
            make.right.equalTo(self.contentView)
            make.top.equalTo(self.contentView)
            make.bottom.equalTo(self.contentView)
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
