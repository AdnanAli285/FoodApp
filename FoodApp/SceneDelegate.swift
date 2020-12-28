//
//  SceneDelegate.swift
//  FoodApp
//
//  Created by Admin on 17/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var navigator: AppNavigator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let navigator = AppNavigator(window: window)
        self.window = window
        self.navigator = navigator
        navigator.startMainScene()
    }

}

