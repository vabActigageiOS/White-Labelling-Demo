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
        view.backgroundColor = .white
        viewControllers = setupMenuItems()
    }
    func setupMenuItems() -> [UIViewController]{
        let featuredViewController = FeaturedViewController()
        featuredViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        let layout = UICollectionViewFlowLayout()
        let favouritesViewController = FavouritesViewController(collectionViewLayout: layout)
        favouritesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let downloadsViewController = DownloadsViewController()
        downloadsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        let historyViewController = HistoryViewController()
        historyViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        let recentViewController = RecentViewController()
        recentViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 3)
        #if DEMO
        return [featuredViewController, favouritesViewController, downloadsViewController, historyViewController]
        #else
        return [featuredViewController, favouritesViewController, downloadsViewController, recentViewController]
        #endif
    }

}

