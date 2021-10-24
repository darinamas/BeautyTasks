//
//  SettingsVC.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

class SettingsVC: UIViewController {
    
    var langSwitch: UISegmentedControl!
    var button = DropDownButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSwitch()
        setDropDown()
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
    
    func setDropDown() {
        //Configure the button
        button = DropDownButton.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        button.setTitle("Colors", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //Add Button to the View Controller
        self.view.addSubview(button)
        
        //button Constraints
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        //  Set the drop down menu's options
        button.dropView.dropDownOptions = generateArray()
    }
    
    func generateArray() -> [String] {
        let array = ["Blue", "Green", "Magenta", "White", "Card", "Card", "Name", "Black", "Pink", "Name"]
        var newArray: [String] = []
        let randomNumber = Int.random(in: 3..<8)
        for _ in 1...randomNumber {
            let newElement = array.randomElement()
            newArray.append(newElement!)
        }
        return newArray
    }
}


