//
//  CustomTF.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 20.10.2021.
//
import Foundation
import UIKit

class CustomTF: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 5
        
    }
}
