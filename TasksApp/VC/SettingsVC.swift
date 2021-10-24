//
//  SettingsVC.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

class SettingsVC: UIViewController {

    var langSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSwitch()
    }
    
    func setSwitch() {
        langSwitch = UISegmentedControl()
        langSwitch.frame.size.width = view.frame.size.width * 0.8   //80% ot width ekrana
        langSwitch.frame.size.height = 40
        langSwitch.frame.origin.x = view.frame.size.width / 8
        langSwitch.frame.origin.y = view.frame.size.height * 0.28  // 30% ot vercha
        langSwitch.insertSegment(withTitle: "English".localized(), at: 0, animated: true)
        langSwitch.insertSegment(withTitle: "Russian".localized(), at: 1, animated: true)
        langSwitch.selectedSegmentIndex = 0
        view.addSubview(langSwitch)
    }
}
