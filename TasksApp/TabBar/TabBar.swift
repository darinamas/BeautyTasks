//
//  TabBar.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

final class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    private func setViews() {
        let vc1 = MainVC()
        let vc2 = TaskVC()
        let vc3 = SettingsVC()
        
        //set title
        vc1.title = "Main".localized()
        vc2.title = "Tasks".localized()
        vc3.title = "Settings".localized()
        
        //set image
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "list.dash")
        vc3.tabBarItem.image = UIImage(systemName: "gearshape")
        
        self.setViewControllers([vc1, vc2, vc3], animated: true)
    }
    
}
