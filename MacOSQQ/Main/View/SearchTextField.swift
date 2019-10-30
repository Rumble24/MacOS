//
//  SearchTextField.swift
//  QQ
//
//  Created by mac on 2018/1/20.
//  Copyright © 2018年 shibiao. All rights reserved.
//

import Cocoa

class SearchTextField: NSTextField {
    let searchImageView = NSImageView(image: #imageLiteral(resourceName: "04"))
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        layer?.cornerRadius = height / 2
        layer?.masksToBounds = true
        
        layer?.borderColor = NSColor.white.cgColor
        layer?.borderWidth = 2.5
        
        font = NSFont.systemFont(ofSize: 15)

        focusRingType = .none
        isBordered = false
        
        backgroundColor = .white
        
        //添加搜索图片
        searchImageView.frame = NSRect(x: 10, y: 2, width: 20, height: 20)
        addSubview(searchImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}
