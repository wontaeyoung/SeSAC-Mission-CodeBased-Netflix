//
//  String+.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

extension String {
  func buttonFontConfigured(font: UIFont) -> AttributedString {
    let attributes: [NSAttributedString.Key: Any] = [.font: font]
    let attributedTitle = NSAttributedString(string: self, attributes: attributes)
    let attributedString = AttributedString(attributedTitle)
    
    return attributedString
  }
}
