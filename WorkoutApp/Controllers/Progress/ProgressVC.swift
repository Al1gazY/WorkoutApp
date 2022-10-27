//
//  ProgressVC.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

class ProgressVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
    }


}
