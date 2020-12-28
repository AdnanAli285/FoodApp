//
//  AppNavigator.swift
//  FoodApp
//
//  Created by Admin on 19/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import UIKit

final class AppNavigator {
    //MARK: - Private Properties
    
    private let window : UIWindow
    
    //MARK: - Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    //MARK: - Public Methods
    
    func startMainScene(){
        
        let homePresenter = HomePresenter(interactor: HomeInteractor(service: ProductService()),
                                      router: HomeRouter())
        let viewController = UIStoryboard.home.instantiateInitialViewController{
           HomeViewController(coder: $0, presenter: homePresenter)
        }
        guard let homeViewController = viewController
            else{
                fatalError("Failed to instantiate HomeViewController from Storyboard")
        }
        self.window.rootViewController = homeViewController
        self.window.makeKeyAndVisible()
        
//        let factory : VehicleViewControllerFactory = ViewControllerFactory()
//
//        let listViewController = factory.createVehicleListViewController()
//        listViewController.tabBarItem = UITabBarItem(title: "List", image: UIImage(systemName: "list.bullet") , tag: 0)
//
//        let mapViewController = factory.createVehicleMapViewController()
//        mapViewController.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map") , tag: 1)
//
//        let mainViewController = MainViewController()
//        mainViewController.viewControllers = [listViewController, mapViewController]
//
//        self.window.rootViewController = mainViewController
//        self.window.makeKeyAndVisible()
    }
    
    
}
