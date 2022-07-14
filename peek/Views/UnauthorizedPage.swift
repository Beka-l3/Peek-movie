//
//  UnauthorizedView.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import UIKit



class UnauthorizedViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    private let loginPage: LoginViewController
    private let registrationPage: RegistrationViewController
    
    
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
    init(loginPage: LoginViewController, registrationPage: RegistrationViewController) {
        self.loginPage = loginPage
        self.registrationPage = registrationPage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setupViews()
    }
    
    
    
    // MARK: - - objc
    
    @objc private func loginButtonClicked() {
        print("Login clicked")
        self.navigationController?.pushViewController(loginPage, animated: true)
    }
    
    
    @objc private func registerButtonClicked() {
        print("Register clicked")
        self.navigationController?.pushViewController(registrationPage, animated: true)
    }
    
    
    // MARK: - - func
    
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.widthAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.logoDistanceFromCenter),
            
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            loginButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            loginButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: ConstraintConstants.secondaryButtonDistanceFromPrimary),
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            registerButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight)
        ])
    }
    
    
}
