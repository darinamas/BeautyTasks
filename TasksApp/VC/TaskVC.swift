//
//  TaskVC.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

class TaskVC: UIViewController {

    var titleTF: UITextField!
    var descTF: UITextField!
    var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNameTF()
        setDescTF()
        setAddBtn()
    }
    
    func setNameTF() {
        titleTF = CustomTF()
        titleTF.frame.size.width = view.frame.size.width * 0.8   //80% ot width ekrana
        titleTF.frame.size.height = 40
        titleTF.frame.origin.x = view.frame.size.width / 8
        titleTF.frame.origin.y = view.frame.size.height * 0.2  // 30% ot vercha
        titleTF.placeholder = "Task title".localized()
        view.addSubview(titleTF)
    }
    
    func setDescTF() {
        descTF = CustomTF()
        descTF.frame.size.width = view.frame.size.width * 0.8   //80% ot width ekrana
        descTF.frame.size.height = 40
        descTF.frame.origin.x = view.frame.size.width / 8
        descTF.frame.origin.y = view.frame.size.height * 0.28  // 30% ot vercha
        descTF.placeholder = "Description".localized()
        view.addSubview(descTF)
    }
    
    func setAddBtn() {
        addButton = UIButton()
        addButton.frame.size.width = view.frame.size.width * 0.2   //80% ot width ekrana
        addButton.frame.size.height = 40
        addButton.frame.origin.x = descTF.frame.maxX - view.frame.size.width * 0.2
        addButton.frame.origin.y = view.frame.size.height * 0.35  // 30% ot vercha
        addButton.setTitle("Add".localized(), for: .normal)
        addButton.backgroundColor = .lightGray
        addButton.layer.cornerRadius = 5
        view.addSubview(addButton)
    }

}


extension String {
    func localized() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}
