//
//  BaseVC.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

enum NavBarPosition{
    case left
    case right
}

class BaseVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configures()
    }
    
    private func configure(){
        
    }
}

@objc extension BaseVC{
    
    func addViews(){
        
    }
    
    func layoutViews(){
        
    }
    
    func configures(){
        view.backgroundColor = Resources.Colors.background
    }
    
    func navBarLeftButtonHandler(){
        print("NavBar left button")
    }
    
    func navBarRightButtonHandler(){
        print("NavBar right button")
    }
}

//NavBar Button Customization

extension BaseVC{
    func addNavBarButton(at position: NavBarPosition, with title: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        //Position of Button
        
        switch position{
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }

    }
}
