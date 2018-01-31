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
        addLabel()
    }
    func addLabel(){
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        label.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    let label: UILabel = {
        let label = UILabel()
        label.text = "Downloads"
        label.backgroundColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

}
