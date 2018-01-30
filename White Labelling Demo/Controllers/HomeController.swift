//
//  ViewController.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 30/01/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit

class HomeController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        let featuredViewController = FeaturedViewController()
        featuredViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        let layout = UICollectionViewFlowLayout()
        let favouritesViewController = FavouritesViewController(collectionViewLayout: layout)
        favouritesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let downloadsViewController = DownloadsViewController()
        downloadsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        let historyViewController = HistoryViewController()
        historyViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        viewControllers = [featuredViewController, favouritesViewController, downloadsViewController, historyViewController ]
    }


}

