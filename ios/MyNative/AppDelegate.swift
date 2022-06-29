//
//  AppDelegate.swift
//  MyNative
//
//  Created by Kiran jote on 09/06/22.
//

import UIKit
import React

@main
class AppDelegate: UIResponder, UIApplicationDelegate, RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
            #if DEBUG
                return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource:nil)
            #else
                return Bundle.main.url(forResource:"main", withExtension:"jsbundle")
            #endif
    }
    
    var bridge: RCTBridge?
    var window: UIWindow? // HERE, add it if it's not available.
    static var shared: AppDelegate { return UIApplication.shared.delegate as! AppDelegate }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        bridge = RCTBridge(delegate: self, launchOptions: launchOptions)
    #if RCT_DEV
        bridge?.module(for: RCTDevLoadingView.self)
    #endif
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

