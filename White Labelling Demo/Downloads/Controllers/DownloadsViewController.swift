//
//  SpeakersController.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 30/01/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit

class DownloadsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelColor()
        addLabel()
    }
    func addLabel(){
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    func setLabelColor(){
        if let settingsDict = Settings.sharedInstance.pListData, let titleLabelColor = settingsDict["titleLabelColor"] as? String{
            titleLabel.backgroundColor = UIColor(hex: titleLabelColor)
        }
    }
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Downloads"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

}
