//
//  RecentViewController.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 01/02/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit

class RecentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelColor()
        addLabel()
    }
    func setLabelColor(){
        if let settingsDict = Settings.sharedInstance.pListData, let titleLabelColor = settingsDict["titleLabelColor"] as? String{
            titleLabel.backgroundColor = UIColor(hex: titleLabelColor)
        }
    }
    func addLabel(){
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "History"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

}
