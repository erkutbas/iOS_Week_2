//
//  AppDelegate.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = MainViewBuilder.build()
        let navigationViewContoller = UINavigationController(rootViewController: mainViewController)
        window?.rootViewController = navigationViewContoller
        window?.makeKeyAndVisible()
        
        return true
    }

}

