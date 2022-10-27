//
//  UIView + Ext.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

//Setting Upper Separator

extension UIView{
    func addBottomBorder(with color: UIColor, height: CGFloat){
        let separator = UIView()
            separator.backgroundColor = color
            separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        
        addSubview(separator)
    }
}
