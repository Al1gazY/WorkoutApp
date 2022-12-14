//
//  SessionVC.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

class SessionVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)

    }


}
