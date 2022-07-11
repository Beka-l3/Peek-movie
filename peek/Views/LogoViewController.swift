//
//  LogoViewController.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

class LogoViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = LogoImage.getLogoImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(logoImageView)
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -128)
        ])
    }
    
}
