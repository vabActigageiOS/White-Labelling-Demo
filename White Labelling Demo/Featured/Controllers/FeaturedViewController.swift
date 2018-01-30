//
//  FeaturedController.swift
//  White Labelling Demo
//
//  Created by vaibhav singh on 30/01/18.
//  Copyright © 2018 vabappd. All rights reserved.
//

import UIKit

class FeaturedViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    var pages = [UIViewController]()
    let pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        let initialPage = 0
        let feature1 = Feature1ViewController()
        let feature2 = Feature2ViewController()
        pages.append(feature1)
        pages.append(feature2)
        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        
    }
    
    func setupPageControl(){
        pageControl.frame = CGRect()
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.numberOfPages = self.pages.count
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageControl)
        pageControl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = pages.index(of: viewController){
            if index == 0{
                return self.pages.last
            }else{
                return self.pages[index - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                return self.pages[viewControllerIndex + 1]
            } else {
                return self.pages.first
            }
        }
        return nil
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.index(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }

}
