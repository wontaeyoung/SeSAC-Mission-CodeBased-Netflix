//
//  LoginViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 2/22/24.
//

import UIKit
import SnapKit

final class LoginViewController: BaseViewController {
  
  private let viewModel = LoginViewModel()
  private let idField = UITextField()
  private let validationLabel = UILabel()
  
  override func setHierarchy() {
    view.addSubviews(idField, validationLabel)
  }
  
  override func setAttribute() {
    idField.placeholder = "아이디를 입력해주세요"
    idField.autocapitalizationType = .none
    idField.autocorrectionType = .no
    idField.spellCheckingType = .no
    idField.borderStyle = .roundedRect
    idField.addTarget(self, action: #selector(idInputChanged), for: .editingChanged)
    
    validationLabel.font = .systemFont(ofSize: 13, weight: .semibold)
  }
  
  override func setConstraint() {
    idField.snp.makeConstraints { make in
      make.top.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(16)
      make.height.equalTo(50)
    }
    
    validationLabel.snp.makeConstraints { make in
      make.top.equalTo(idField.snp.bottom).offset(8)
      make.horizontalEdges.equalTo(view).inset(16)
      make.height.equalTo(25)
    }
  }
  
  override func bind() {
    viewModel.labelText.bind { validationResult in
      self.validationLabel.text = validationResult
    }
  }
  
  @objc private func idInputChanged() {
    viewModel.idText.onNext(idField.text!)
  }
}
