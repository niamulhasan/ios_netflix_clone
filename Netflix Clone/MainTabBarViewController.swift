//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Niamul Hasan on 22/10/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let upcommingVC = UINavigationController(rootViewController: UpcommingViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.title = "Home"
        
        upcommingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        upcommingVC.title = "Comming Soon"
        
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchVC.title = "Top Search"
        
        downloadsVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        downloadsVC.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC, upcommingVC, searchVC, downloadsVC], animated: true)
    }


}

