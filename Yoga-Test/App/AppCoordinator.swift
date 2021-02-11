//
//  AppCoordinator.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit

protocol AppCoordinatorProtocol: class {
    func createHomePage(scene: UIWindowScene)
}

class AppCoordinator {
    var window: UIWindow?
}

// MARK: Home page case
extension AppCoordinator {
    
    private func createHomePage() -> UINavigationController {
        let homePageViewController = AdminFoodPageAssembly.assemble()
        homePageViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage:  UIImage(systemName: "house"))
        
        return UINavigationController(rootViewController: homePageViewController)
    }
    
    private func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = UIColor.systemYellow
        //add more tabs here
        tabBar.viewControllers = [createHomePage(), createHomePage()]
        return tabBar
    }
}

extension AppCoordinator: AppCoordinatorProtocol {
    
    func createHomePage(scene: UIWindowScene) {
        window = UIWindow(windowScene: scene)
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
    }
}

