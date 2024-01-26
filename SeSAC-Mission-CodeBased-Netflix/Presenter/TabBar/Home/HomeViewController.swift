//
//  HomeViewController.swift
//  SeSAC-Mission-CodeBased-Netflix
//
//  Created by 원태영 on 1/26/24.
//

import UIKit
import SnapKit

final class HomeViewController: BaseViewController {
  
  private let popularNowImages: [UIImage] = [.더퍼스트슬램덩크, .스즈메의문단속, .아바타물의길]
  
  private let mainImageView = UIImageView().configured {
    $0.image = .노량
    $0.contentMode = .scaleAspectFill
    $0.clipsToBounds = true
    $0.layer.cornerRadius = 20
  }
  
  private let categoryLabel = UILabel().configured {
    $0.text = "응원하고픈 · 흥미진진 · 사극 · 전투 · 한국 작품"
    $0.font = .systemFont(ofSize: 13, weight: .black)
    $0.textAlignment = .center
  }
  
  private let playButton = UIButton().configured { button in
    let config = UIButton.Configuration.filled().configured {
      $0.attributedTitle = "재생".buttonFontConfigured(font: .systemFont(ofSize: 13, weight: .semibold))
      $0.image = .play
      $0.imagePadding = 10
      $0.baseForegroundColor = .systemBackground
      $0.baseBackgroundColor = .label
    }
    
    button.configuration = config
  }
  
  private let addWishListButton = UIButton().configured { button in
    let config = UIButton.Configuration.filled().configured {
      $0.attributedTitle = "내가 찜한 리스트".buttonFontConfigured(font: .systemFont(ofSize: 13, weight: .semibold))
      $0.image = UIImage(systemName: "plus")
      $0.imagePadding = 10
      $0.baseForegroundColor = .label
      $0.baseBackgroundColor = .darkGray
    }
    
    button.configuration = config
  }
  
  private let popularNowInfoLabel = UILabel().configured {
    $0.text = "지금 뜨는 콘텐츠"
    $0.font = .systemFont(ofSize: 17, weight: .bold)
  }
  
  private lazy var popularNowImageStackView = UIStackView().configured { stack in
    stack.axis = .horizontal
    stack.distribution = .fillEqually
    stack.spacing = 8
    
    self.popularNowImages
      .map { image in
        return UIImageView().configured {
          $0.image = image
          $0.contentMode = .scaleAspectFill
          $0.clipsToBounds = true
          $0.layer.cornerRadius = 10
        }
      }
      .forEach {
        stack.addArrangedSubview($0)
      }
  }
  
  override func setHierarchy() {
    view.addSubviews(mainImageView, popularNowInfoLabel, popularNowImageStackView)
    mainImageView.addSubviews(categoryLabel, playButton, addWishListButton)
  }
  
  override func setAttribute() {
    navigationItem.title = "고래밥님"
  }
  
  override func setConstraint() {
    
    mainImageView.snp.makeConstraints {
      $0.horizontalEdges.equalToSuperview().inset(20)
      $0.top.equalTo(view.safeAreaLayoutGuide)
      $0.height.equalTo(mainImageView.snp.width).multipliedBy(1.4)
    }
    
    playButton.snp.makeConstraints {
      $0.leading.bottom.equalToSuperview().inset(16)
      $0.height.equalTo(35)
    }
    
    addWishListButton.snp.makeConstraints {
      $0.trailing.bottom.equalToSuperview().inset(16)
      $0.height.equalTo(35)
      $0.leading.equalTo(playButton.snp.trailing).offset(12)
      $0.width.equalTo(playButton.snp.width)
    }
    
    categoryLabel.snp.makeConstraints {
      $0.horizontalEdges.equalToSuperview().inset(16)
      $0.bottom.equalTo(playButton.snp.top).offset(-16)
    }
    
    popularNowInfoLabel.snp.makeConstraints {
      $0.leadingMargin.equalToSuperview()
      $0.top.equalTo(mainImageView.snp.bottom).offset(10)
      $0.height.equalTo(20)
    }
    
    popularNowImageStackView.snp.makeConstraints {
      $0.horizontalEdges.equalToSuperview().inset(20)
      $0.bottom.equalTo(view.safeAreaLayoutGuide)
      $0.top.equalTo(popularNowInfoLabel.snp.bottom).offset(10)
    }
  }
}

#Preview {
  HomeViewController()
}
