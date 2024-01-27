//
//  SaveViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit

final class SaveViewController: BaseViewController {
  
  // MARK: - UI
  private let autoSaveTitleLabel = UILabel().configured {
    $0.text = "'나만의 자동 저장' 기능"
    $0.font = .boldSystemFont(ofSize: 24)
    $0.textAlignment = .center
  }
  
  private let autoSaveDescriptionLabel = UILabel().configured {
    $0.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
    $0.font = .systemFont(ofSize: 15, weight: .bold)
    $0.textColor = .gray
    $0.textAlignment = .center
    $0.numberOfLines = 0
  }
  
  private let dummyImageView = UIImageView().configured {
    $0.image = .dummy
  }
  
  private let settingButton = UIButton().configured { button in
    button.configuration = .filled().configured {
      $0.baseBackgroundColor = .systemIndigo
      $0.cornerStyle = .small
    }
    .titleAttributed(with: "설정하기", font: .systemFont(ofSize: 17, weight: .bold))
    .inset(by: .vertical, with: 10)
  }
  
  private let showingSavableListButton = UIButton().configured { button in
    
    button.configuration = .filled().configured {
      $0.baseForegroundColor = .systemBackground
      $0.baseBackgroundColor = .label
      $0.cornerStyle = .small
    }
    .titleAttributed(with: "저장 가능한 콘텐츠 살펴보기", font: .systemFont(ofSize: 17, weight: .bold))
    .inset(by: .vertical, with: 10)
  }
  
  // MARK: - Method
  override func setHierarchy() {
    view.addSubviews(
      autoSaveTitleLabel,
      autoSaveDescriptionLabel,
      dummyImageView,
      settingButton,
      showingSavableListButton
    )
  }
  
  override func setAttribute() {
    navigationItem.title = "저장한 콘텐츠 목록"
  }
  
  override func setConstraint() {
   
    autoSaveTitleLabel.snp.makeConstraints {
      $0.bottom.equalTo(autoSaveDescriptionLabel.snp.top).offset(-20)
      $0.centerX.equalToSuperview()
    }
    
    autoSaveDescriptionLabel.snp.makeConstraints {
      $0.bottom.equalTo(dummyImageView.snp.top).offset(-10)
      $0.horizontalEdges.equalToSuperview().inset(20)
    }
    
    dummyImageView.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.horizontalEdges.equalToSuperview()
    }
    
    settingButton.snp.makeConstraints {
      $0.top.equalTo(dummyImageView.snp.bottom)
      $0.horizontalEdges.equalToSuperview().inset(60)
    }
    
    showingSavableListButton.snp.makeConstraints {
      $0.top.equalTo(settingButton.snp.bottom).offset(20)
      $0.horizontalEdges.equalToSuperview().inset(90)
    }
  }
}

#Preview {
  SaveViewController()
}
