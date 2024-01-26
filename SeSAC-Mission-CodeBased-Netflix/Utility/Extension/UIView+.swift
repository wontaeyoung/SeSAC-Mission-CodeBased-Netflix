//
//  UIView+.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

extension UIView {
  func addSubviews(_ view: UIView...) {
    view.forEach { self.addSubview($0) }
  }
}
