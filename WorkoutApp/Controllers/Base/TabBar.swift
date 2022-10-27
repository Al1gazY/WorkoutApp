//
//  TabBar.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 26.10.2022.
//

import UIKit

enum Tabs: Int{
    case overview
    case session
    case progress
    case settings
}

final class TabBar: UITabBarController{
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        
        //TabBar Customization
        
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        //Setting ViewControllers
        
        let overviewController = OverviewVC()
        let sessionController = SessionVC()
        let progressController = ProgressVC()
        let settingsController = SettingsVC()
        
        //Setting NavigationBars
        
        let overviewNavigation = NavBar(rootViewController: overviewController)
        let sessionNavigation = NavBar(rootViewController: sessionController)
        let progressNavigation = NavBar(rootViewController: progressController)
        let settingsNavigation = NavBar(rootViewController: settingsController)
        
        //TabBar Items
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation, sessionNavigation, progressNavigation, settingsNavigation
        ],
                           animated: false)
    }
}
