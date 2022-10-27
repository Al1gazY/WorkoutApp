//
//  NavBar.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

final class NavBar: UINavigationController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    //Title Organization
    
    private func configure(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        // Adding Upper Separator
        
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
}
