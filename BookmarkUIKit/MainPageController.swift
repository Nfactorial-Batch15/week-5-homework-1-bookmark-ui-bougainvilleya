//
//  MainPageController.swift
//  BookmarkUIKit
//
//  Created by Leyla Nyssanbayeva on 23.01.2022.
//

import UIKit
import SnapKit

class MainPageController: UIViewController {
    private var navigationBarTitle: UILabel = {
        let labelText = UILabel()
        labelText.text = "Bookmark App"
        labelText.textColor = .black
        labelText.font = .systemFont(ofSize: 17, weight: .semibold)
        return labelText
    }()
    
    private var whenEmptyTitle: UILabel = {
        let labelText = UILabel()
        labelText.text = "Save your first\nbookmark"
        labelText.textColor = .black
        labelText.textAlignment = .center
        labelText.numberOfLines = 2
        labelText.font = .systemFont(ofSize: 36, weight: .bold)
        return labelText
    }()
    
    private var addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add bookmark", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 16
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(navigationBarTitle)
        navigationBarTitle.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(28)
        }
        
        view.addSubview(addButton)
        addButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.height.equalTo(58)
            make.width.equalTo(view).inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(20)
        }
        
        view.addSubview(whenEmptyTitle)
        whenEmptyTitle.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}
