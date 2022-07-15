//
//  LoginPage.swift
//  peek
//
//  Created by Bekzhan Talgat on 14.07.2022.
//

import UIKit


class RegistrationViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    
    private lazy var logoImageView: UIImageView = Images.getImageView(named: "Logo")

    private lazy var usernameInputField: UITextField = InputFields.inputField(placeholderText: "username")
    private lazy var passwordInputField: UITextField = InputFields.inputField(placeholderText: "password")
    
    private lazy var registerButton: UIButton = {
        let btn = Buttons.getPrimaryButton(title: "Register")
        btn.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        return btn
    }()
    
    
    // MARK: - - lifecycle, override
    init() {
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        usernameInputField.text = ""
        usernameInputField.placeholder = "Username"
        passwordInputField.text = ""
        passwordInputField.placeholder = "Password"
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.tintColor = ColorPalette.customYellow
    }
    
    
    // MARK: - - objc
    @objc private func loginButtonPressed() {
        print("Register pressed")
    }
    
    
    // MARK: - - func
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(usernameInputField)
        view.addSubview(passwordInputField)
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.widthAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: ConstraintConstants.logoDistanceFromCenter),
            
            usernameInputField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.inputFieldDistanceFromCenter),
            usernameInputField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.inputFieldLeadingAnchor),
            usernameInputField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            usernameInputField.heightAnchor.constraint(equalToConstant: ConstraintConstants.inputFieldHeight),
            
            passwordInputField.topAnchor.constraint(equalTo: usernameInputField.bottomAnchor, constant: ConstraintConstants.distanceBetweenInputFields),
            passwordInputField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.inputFieldLeadingAnchor),
            passwordInputField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            passwordInputField.heightAnchor.constraint(equalToConstant: ConstraintConstants.inputFieldHeight),
            
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            registerButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            registerButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            registerButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight),
        ])
    }
}
