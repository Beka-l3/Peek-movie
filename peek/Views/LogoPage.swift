//
//  LogoViewController.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

class LogoViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = Images.getImageView(named: "Logo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(logoImageView)
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.widthAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.logoDistanceFromCenter)
        ])
    }
    
}
