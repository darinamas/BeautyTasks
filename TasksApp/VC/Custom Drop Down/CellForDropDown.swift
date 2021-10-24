//
//  CellForDropDown.swift
//  TasksApp
//
//  Created by Darinka on 24.10.2021.
//

import UIKit

class CellForDropDown: UITableViewCell {

    var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: 100, height: 20))
        label.textColor = .black
        return label
    }()

    var textField: UITextField = {
        let textFiled = UITextField(frame: CGRect(x: 10, y: 30, width: 200, height: 30))
        textFiled.backgroundColor = .white
        return textFiled
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(textField)
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

