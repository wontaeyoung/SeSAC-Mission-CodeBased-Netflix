//
//  Observable.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 2/22/24.
//

final class Observable<T> {
  
  private var value: T {
    didSet {
      action?(value)
    }
  }

  private var action: ((T) -> Void)?
  
  init(_ value: T) {
    self.value = value
  }
  
  var current: T {
    return value
  }
  
  
  func bind(_ action: @escaping (T) -> Void) {
    action(value)
    self.action = action
  }
  
  func binded(_ action: @escaping (T) -> Void) -> Observable {
    self.bind(action)
    return self
  }
  
  func onNext(_ value: T) {
    self.value = value
  }
}
