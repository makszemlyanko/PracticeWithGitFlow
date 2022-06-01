//
//  BaseTapBarController.swift
//  AppStoreJSONApis
//
//  Created by Maks Kokos on 01.06.2022.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .red
        redViewController.navigationItem.title = "APPS"
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "RED NAV"
       // redNavController.navigationItem.largeTitleDisplayMode = .always
        
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .blue
        blueViewController.navigationItem.title = "SEARCH"
       // blueViewController.navigationItem.largeTitleDisplayMode = .always
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "BLUE NAV"
            
        
        
        viewControllers = [
            redNavController,
            blueNavController
        ]
    }
}



