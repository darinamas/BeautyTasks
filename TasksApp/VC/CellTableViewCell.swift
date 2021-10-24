//
//  CellTableViewCell.swift
//  TasksApp
//
//  Created by Daryna Polevyk on 19.10.2021.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    var mainView: UIView!
    var imageV: UIImageView!
    var bottonView: UIView!
    var nameLabel: UILabel!
    var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createMainView()
        createImageView()
        createBottomView()
        createNameLabel()
        createDescriptionLabel()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    override func layoutSubviews() {
        super.layoutSubviews()
        setFrames()
    }
    
    func createMainView() {
        mainView = UIView()
        mainView.backgroundColor = .lightGray
        mainView.layer.cornerRadius = 20
        contentView.addSubview(mainView)
    }
    
    func createImageView() {
        imageV = UIImageView()
        imageV.image = UIImage(named: "1")
        imageV.layer.masksToBounds = true
        imageV.layer.cornerRadius = 20
        mainView.addSubview(imageV)
    }
    
    func createBottomView() {
        bottonView = UIView()
        bottonView.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
        imageV.addSubview(bottonView)
    }
    
    func createNameLabel() {
        nameLabel = UILabel()
        nameLabel.text = "Name Label".localized()
        nameLabel.font = UIFont(name: "IBMPlexSans-Bold", size: 20)
        bottonView.addSubview(nameLabel)
    }
    
    func createDescriptionLabel() {
        descriptionLabel = UILabel()
        descriptionLabel.text = "Description Label".localized()
        bottonView.addSubview(descriptionLabel)
    }
    
    func setFrames() {
        mainView.frame = CGRect(x: 40,
                                y: 40,
                                width: contentView.frame.size.width - 80,
                                height: contentView.frame.size.height - 80)
        imageV.frame = CGRect(  x: 0,
                                y: 0,
                                width: mainView.frame.size.width,
                                height: mainView.frame.size.height)
        bottonView.frame = CGRect(x: 0,
                                  y: imageV.frame.maxY * 0.7,
                                width: imageV.frame.size.width,
                                height: imageV.frame.size.height)
        nameLabel.frame = CGRect(x: 20,
                                 y: 5,
                                width: bottonView.frame.size.width,
                                height: bottonView.frame.size.height / 8)
        descriptionLabel.frame = CGRect(x: 20,
                                        y: nameLabel.frame.maxY,
                                width: bottonView.frame.size.width,
                                height: bottonView.frame.size.height / 8)
    }
}

