//
//  MainTabBarPage.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

enum MainTabBarPage: Int, CaseIterable {
  
  case login
  case home
  case search
  case save
  
  var index: Int {
    self.rawValue
  }
  
  var title: String {
    switch self {
      case .login:
        return "로그인"
        
      case .home:
        return "홈"
        
      case .search:
        return "NEW & HOT"
        
      case .save:
        return "저장한 콘텐츠 목록"
    }
  }
  
  var icon: UIImage? {
    switch self {
      case .login:
        return UIImage(systemName: "person")
        
      case .home:
        return UIImage(systemName: "house")
        
      case .search:
        return UIImage(systemName: "play.rectangle.on.rectangle")
        
      case .save:
        return UIImage(systemName: "arrow.down.circle")
    }
  }
  
  var selectedIcon: UIImage? {
    switch self {
      case .login:
        return UIImage(systemName: "person.fill")
        
      case .home:
        return UIImage(systemName: "house.fill")
        
      case .search:
        return UIImage(systemName: "play.rectangle.on.rectangle.fill")
        
      case .save:
        return UIImage(systemName: "arrow.down.circle.fill")
    }
  }
  
  var rootViewController: BaseViewController {
    switch self {
      case .login:
        return LoginViewController()
        
      case .home:
        return HomeViewController()
        
      case .search:
        return SearchViewController()
        
      case .save:
        return SaveViewController()
    }
  }
  
  var tabBarItem: UITabBarItem {
    return UITabBarItem(title: title, image: icon, selectedImage: selectedIcon)
  }
}
