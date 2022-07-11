//
//  AuthorizedView.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

class AuthorizedViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    
    private lazy var logoImageView: UIImageView = LogoImage.getLogoImageView()
    
    private lazy var joinButton: UIButton = {
        let btn = Buttons.getPrimaryButton(title: "Join")
        btn.addTarget(self, action: #selector(joinButtonClicked), for: .touchUpInside)
        return btn
    }()
    
    private lazy var createButton: UIButton = {
        let btn = Buttons.getSecondaryButton(title: "Create")
        btn.addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
        return btn
    }()
    
    
    
    // MARK: - - lifecycle, override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.tintColor = ColorPalette.customYellow
    }
    
    
    // MARK: - - objc
    
    @objc private func joinButtonClicked() {
        print("Join clicked")
    }
    
    @objc private func createButtonClicked() {
        print("Create clicked")
    }
    
    
    // MARK: - - func
        
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(joinButton)
        view.addSubview(createButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -128),
            
            joinButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            joinButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            joinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            joinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 192),
            joinButton.heightAnchor.constraint(equalToConstant: 48),
            
            createButton.topAnchor.constraint(equalTo: joinButton.bottomAnchor, constant: 16),
            createButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            createButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            createButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
}
