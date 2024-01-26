//
//  MainTabBarController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

final class MainTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    configureTabBar()
  }
  
  private func configureTabBar() {
    let rootControllers = MainTabBarPage.allCases.map { page in
      return UINavigationController(rootViewController: page.rootViewController).configured {
        $0.tabBarItem = page.tabBarItem
      }
    }
    
    self.setViewControllers(rootControllers, animated: true)
    self.selectedIndex = MainTabBarPage.home.index
    self.tabBar.tintColor = .label
  }
}


#Preview {
  MainTabBarController()
}
