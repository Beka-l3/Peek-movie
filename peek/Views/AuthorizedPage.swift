//
//  AuthorizedView.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

class AuthorizedViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    private let joinRoomPage: JoinRoomViewController
    private let createRoomPage: CreateRoomViewController
    
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
    init(joinRoomPage: JoinRoomViewController, createRoomPage: CreateRoomViewController) {
        self.joinRoomPage = joinRoomPage
        self.createRoomPage = createRoomPage
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
    
    @objc private func joinButtonClicked() {
        print("Join clicked")
        self.navigationController?.pushViewController(joinRoomPage, animated: true)
    }
    
    @objc private func createButtonClicked() {
        print("Create clicked")
        self.navigationController?.pushViewController(createRoomPage, animated: true)
    }
    
    
    // MARK: - - func
        
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(joinButton)
        view.addSubview(createButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.widthAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.logoDistanceFromCenter),
            
            joinButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            joinButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            joinButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            joinButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            joinButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight),
            
            createButton.topAnchor.constraint(equalTo: joinButton.bottomAnchor, constant: ConstraintConstants.secondaryButtonDistanceFromPrimary),
            createButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            createButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            createButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            createButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight)
        ])
    }
    
}
