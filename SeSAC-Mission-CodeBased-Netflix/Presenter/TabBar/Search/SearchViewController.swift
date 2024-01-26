//
//  SearchViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit
import SnapKit

final class SearchViewController: BaseViewController {
  
  private let searchBar = UISearchBar().configured {
    $0.placeholder = "게임, 시리즈, 영화를 검색하세요..."
    $0.autocorrectionType = .no
    $0.autocapitalizationType = .none
    $0.spellCheckingType = .no
  }
  
  private let toBeReleasedButton = UIButton().configured {
    let config = UIButton.Configuration.filled().configured {
      $0.attributedTitle = "공개 예정".buttonFontConfigured(font: .boldSystemFont(ofSize: 13))
      $0.image = .blue
      $0.imagePadding = 3
      $0.cornerStyle = .capsule
      $0.baseBackgroundColor = .systemBackground
    }
    
    $0.configuration = config
  }
  
  private let popularContentButton = UIButton().configured {
    let config = UIButton.Configuration.filled().configured {
      $0.attributedTitle = "모두의 인기 콘텐츠".buttonFontConfigured(font: .boldSystemFont(ofSize: 13))
      $0.image = .turquoise
      $0.imagePadding = 3
      $0.cornerStyle = .capsule
      $0.baseBackgroundColor = .systemBackground
    }
    
    $0.configuration = config
  }
  
  private let top10Button = UIButton().configured {
    let config = UIButton.Configuration.filled().configured {
      $0.attributedTitle = "TOP 10 시리즈".buttonFontConfigured(font: .boldSystemFont(ofSize: 13))
      $0.image = .pink
      $0.imagePadding = 3
      $0.cornerStyle = .capsule
      $0.baseBackgroundColor = .systemBackground
    }
    
    $0.configuration = config
  }
  
  private lazy var filterButtons: [UIButton] = [toBeReleasedButton, popularContentButton, top10Button]
  
  override func setHierarchy() {
    view.addSubviews(searchBar, toBeReleasedButton, popularContentButton, top10Button)
  }
  
  override func setAttribute() {
    navigationItem.title = "NEW & HOT 검색"
    
    filterButtons.forEach {
      $0.addTarget(self, action: #selector(filterButtonTapped), for: .touchUpInside)
    }
  }
  
  override func setConstraint() {
    searchBar.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide)
      $0.horizontalEdges.equalToSuperview().inset(30)
    }
    
    toBeReleasedButton.snp.makeConstraints {
      $0.top.equalTo(searchBar.snp.bottom).offset(10)
      $0.leading.equalToSuperview()
    }
    
    popularContentButton.snp.makeConstraints {
      $0.top.equalTo(searchBar.snp.bottom).offset(10)
      $0.leading.equalTo(toBeReleasedButton.snp.trailing)
    }
    
    top10Button.snp.makeConstraints {
      $0.top.equalTo(searchBar.snp.bottom).offset(10)
      $0.leading.equalTo(popularContentButton.snp.trailing)
      $0.trailing.equalToSuperview()
    }
  }
  
  private func toggleButtonsColor(sender: UIButton) {
    filterButtons.forEach {
      $0.configuration?.baseForegroundColor = .label
      $0.configuration?.baseBackgroundColor = .systemBackground
    }
    
    sender.configuration?.baseForegroundColor = .systemBackground
    sender.configuration?.baseBackgroundColor = .label
  }
  
  @objc private func filterButtonTapped(_ sender: UIButton) {
    toggleButtonsColor(sender: sender)
  }
}

#Preview {
  SearchViewController()
}
