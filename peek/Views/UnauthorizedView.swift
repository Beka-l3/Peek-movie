//
//  UnauthorizedView.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import UIKit



class UnauthorizedViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    
    private lazy var logoImageView: UIImageView = LogoImage.getLogoImageView()

    private lazy var loginButton: UIButton = {
        let btn = Buttons.getPrimaryButton(title: "Login")
        btn.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        return btn
    }()

    private lazy var registerButton: UIButton = {
        let btn = Buttons.getSecondaryButton(title: "Register")
        btn.addTarget(self, action: #selector(registerButtonClicked), for: .touchUpInside)
        return btn
    }()
    
    
    
    
    // MARK: - - lifecycle, override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setupViews()
    }
    
    
    
    // MARK: - - objc
    
    @objc private func loginButtonClicked() {
        print("Login clicked")
    }
    
    
    @objc private func registerButtonClicked() {
        print("Register clicked")
    }
    
    
    // MARK: - - func
    
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -128),
            
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 192),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 16),
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    
}
