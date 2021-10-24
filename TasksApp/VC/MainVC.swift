//
//  ViewController.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

class MainVC: UITableViewController {

    
    let identifier = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setTableView()
        
        for family in UIFont.familyNames.sorted() {
                    let names = UIFont.fontNames(forFamilyName: family)
                    print("Family: \(family) Font names: \(names)")
                }
    }


}

//Config

extension MainVC {
    
    func setTableView() {
        tableView.register(CellTableViewCell.self, forCellReuseIdentifier: identifier)
        tableView.rowHeight = UITableView.automaticDimension
        
    }
}

//TableView Delegate

extension MainVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! CellTableViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height / 3
    }
    
    
}

