//
//  FavouritedHeaderCell.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 31/01/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit

class FavouritesHeaderCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addLabel(){
        addSubview(label)
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
    }
    let label: UILabel = {
        let label = UILabel()
        label.text = "Favourites"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
}
