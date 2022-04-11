//
//  AppDelegate.swift
//  app life cycle
//
//  Created by Cumulations Technologies on 15/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("application did finish launching with options")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("will launch with options")
        return false
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("application entered foreground")
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("application is active")
    }
    func applicationWillTerminate(_ application: UIApplication) {
        print("application will terminate")
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("application enter brackground")
    }
    func applicationWillResignActive(_ application: UIApplication) {
        print("appliocation will resign active")
    }
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

