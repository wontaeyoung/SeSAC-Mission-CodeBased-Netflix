//
//  BaseTableViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

class BaseTableViewController: BaseViewController {
  
  @MainActor func register() { }
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    register()
  }
}
