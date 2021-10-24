//
//  DropDown.swift
//  TasksApp
//
//  Created by Darinka on 24.10.2021.
//

import UIKit

class DropDownView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    var dropDownOptions = [String]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropDownOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dropDownOpt = dropDownOptions[indexPath.row]
        
        if dropDownOpt == "Name" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellForDropDown
            cell.label.text = "Name"
            cell.backgroundColor = .orange
            
            return cell
        }  else if dropDownOpt == "Card" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellForDropDown
            cell.label.text = "Card"
            cell.backgroundColor = .red
            return cell
        } else {
            let cell = UITableViewCell()
            cell.textLabel?.text = dropDownOpt
            switch dropDownOptions[indexPath.row] {
            case "Blue": cell.backgroundColor = .blue
            case "Green": cell.backgroundColor = .green
            case "Magenta": cell.backgroundColor = .magenta
            case "White": cell.backgroundColor = .white
            case "Black": cell.backgroundColor = .gray
            default: cell.backgroundColor = .systemPink
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func setTableView() {
        tableView.backgroundColor = UIColor.darkGray
        self.backgroundColor = UIColor.darkGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(tableView)
        
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        tableView.register(CellForDropDown.self, forCellReuseIdentifier: "cell")
    }
    
}
