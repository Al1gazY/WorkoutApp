//
//  UIView + Ext.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit


extension UIView{
    
    //Setting Upper Separator

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
    
    //Button Animation
    
    func makeSystem(_ button: UIButton){
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    @objc func handleIn(){
        UIView.animate(withDuration: 0.15) { self.alpha = 0.55 }
    }
    
    @objc func handleOut(){
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }
    }
}
