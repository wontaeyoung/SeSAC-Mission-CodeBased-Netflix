//
//  LoginViewModel.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 2/22/24.
//

import Foundation

final class LoginViewModel {
  
  lazy var idText: Observable<String> = .init("").binded { newID in
    self.validID(newID)
  }
  
  var labelText: Observable<String> = .init("아이디를 입력해주세요")
  
  func containsSpecialChar(text: String) -> Bool {
      let specialCharacters = CharacterSet(charactersIn: "!@#$")
      return text.rangeOfCharacter(from: specialCharacters) != nil
  }
  
  func validID(_ text: String) {
    print(text)
    guard !text.isEmpty else {
      return labelText.onNext("아이디를 입력해주세요")
    }
    
    guard !containsSpecialChar(text: text) else {
      return labelText.onNext("특수 문자는 포함할 수 없어요")
    }
    
    guard 8...16 ~= text.count else {
      return labelText.onNext("아이디는 8자 이상, 16자 이하로 설정해주세요")
    }
    
    labelText.onNext("\(text) 는 사용 가능한 아이디에요")
  }
}
