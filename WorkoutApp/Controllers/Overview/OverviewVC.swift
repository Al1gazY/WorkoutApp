//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 26.10.2022.
//

import UIKit

class OverviewVC: BaseVC {

    private let allWorkoutsButton = SecondaryButton() //NavBar Button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resources.Strings.NavBar.overview
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }

}

extension OverviewVC{
    
    override func addViews() {
        super.addViews()
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
        ])
    }
    
    override func configures() {
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self,
                                    action: #selector(allWorkoutsButtonAction),
                                    for: .touchUpInside)
    }
}

//All Workouts Button Action

@objc extension OverviewVC{
    func allWorkoutsButtonAction(){
        print("All Workouts Button")
    }
}
