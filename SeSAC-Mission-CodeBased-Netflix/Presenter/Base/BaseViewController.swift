//
//  BaseViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

class BaseViewController: UIViewController {
  
  var finishableKeyboardEditing: Bool
  
  @MainActor func setHierarchy() { }
  @MainActor func setAttribute() { }
  @MainActor func setConstraint() { }
  @MainActor func bind() { }
  
  init(finishableKeyboardEditing: Bool = false) {
    self.finishableKeyboardEditing = finishableKeyboardEditing
    
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    view.backgroundColor = .systemBackground
    
    setHierarchy()
    setAttribute()
    setConstraint()
    bind()
  }
}

extension BaseViewController {
  private func makeViewFinishableEditing() {
    let gesture = UITapGestureRecognizer(target: self, action: #selector(viewDidTap))
    
    view.addGestureRecognizer(gesture)
  }
  
  @objc private func viewDidTap(_ sender: UIGestureRecognizer) {
    if finishableKeyboardEditing {
      view.endEditing(true)
    } else {
      view.removeGestureRecognizer(sender)
    }
  }
}
