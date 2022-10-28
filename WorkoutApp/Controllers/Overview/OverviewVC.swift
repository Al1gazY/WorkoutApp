//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 26.10.2022.
//

import UIKit

class OverviewVC: BaseVC {

    private let navBar = OverviewNavBar()

}

extension OverviewVC{
    
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)            
        ])
    }
    
    override func configures() {
        super.configures()
        navigationController?.navigationBar.isHidden = true
        
        
    }
}

