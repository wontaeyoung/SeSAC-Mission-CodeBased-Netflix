//
//  AppDelegate.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  /*
  private func setGlobalAppearence() {
    let appearence = UINavigationBarAppearance().configured {
      $0.backgroundColor = .systemBackground
      $0.titleTextAttributes = [.foregroundColor: UIColor.label]
      $0.largeTitleTextAttributes = [.foregroundColor: UIColor.label]
    }
    
    UINavigationBar.appearance().standardAppearance = appearence
    UINavigationBar.appearance().compactAppearance = appearence
    UINavigationBar.appearance().scrollEdgeAppearance = appearence
  }
   */
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
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

