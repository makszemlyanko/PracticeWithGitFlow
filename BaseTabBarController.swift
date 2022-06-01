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
        
        let todayController = UIViewController()
        todayController.view.backgroundColor = .white
        todayController.navigationItem.title = "Today"
        let todayNavController = UINavigationController(rootViewController: todayController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon") // set icon with image literal
        todayNavController.navigationBar.prefersLargeTitles = true
        
       
        let appsController = UIViewController()
        appsController.view.backgroundColor = .white
        appsController.navigationItem.title = "Apps"
        let appsNavController = UINavigationController(rootViewController: appsController)
        appsNavController.tabBarItem.title = "Apps"
        appsNavController.tabBarItem.image = #imageLiteral(resourceName: "apps") // set icon with image literal
        appsNavController.navigationBar.prefersLargeTitles = true
        
        
        let searchController = UIViewController()
        searchController.view.backgroundColor = .white
        searchController.navigationItem.title = "Search"
        let searchNavController = UINavigationController(rootViewController: searchController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.tabBarItem.image = UIImage(named: "search") // set icon with icon-name
        searchNavController.navigationBar.prefersLargeTitles = true
        
        
        viewControllers = [
            todayNavController,
            appsNavController,
            searchNavController
        ]
    }
    
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        
        navController.tabBarItem.title = title
        
        
        return navController
    }
    
}



