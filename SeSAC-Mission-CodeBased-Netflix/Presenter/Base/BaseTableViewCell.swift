//
//  BaseTableViewCell.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
  
  class var identifier: String {
    return String(describing: self)
  }
  
  @MainActor func setHierarchy() { }
  @MainActor func setAttribute() { }
  @MainActor func setConstraint() { }
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    backgroundColor = .clear
    contentView.backgroundColor = .clear
    
    setHierarchy()
    setAttribute()
    setConstraint()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
