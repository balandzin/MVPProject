//
//  AppDelegate.swift
//  MVPProject
//
//  Created by Антон Баландин on 5.06.25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = MVPViewController()
        let presenter = MVPPresenter()
        let dataManager = DataManagerImplementation()
        
        vc.output = presenter
        presenter.view = vc
        presenter.dataManager = dataManager
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }
}

