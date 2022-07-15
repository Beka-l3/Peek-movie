//
//  JoinRoomPage.swift
//  peek
//
//  Created by Bekzhan Talgat on 14.07.2022.
//

import UIKit


class JoinRoomViewController: UIViewController {
    
    
    public weak var appCoordinator: AppCoordinator?
    private var waitingRoomPage: WaitingRoomViewController
    
    private lazy var logoImageView: UIImageView = Images.getImageView(named: "Logo")

    private lazy var roomIdInputField: UITextField = InputFields.inputField(placeholderText: "Room Id")
    
    private lazy var joinButton: UIButton = {
        let btn = Buttons.getPrimaryButton(title: "Login")
        btn.addTarget(self, action: #selector(joinButtonPressed), for: .touchUpInside)
        return btn
    }()
    
    
    
    // MARK: - - lifecycle, override
    init(watingRoomPage: WaitingRoomViewController) {
        self.waitingRoomPage = watingRoomPage
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
        
        roomIdInputField.text = ""
        roomIdInputField.placeholder = "Room Id"
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.tintColor = ColorPalette.customYellow
    }
    
    // MARK: - - objc
    
    @objc private func joinButtonPressed() {
        print("Join clicked", roomIdInputField.text!)
        self.navigationController?.pushViewController(waitingRoomPage, animated: true)
    }
    
    // MARK: - - func
    
    private func setupViews() {
        view.addSubview(logoImageView)
        view.addSubview(roomIdInputField)
        view.addSubview(joinButton)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.widthAnchor.constraint(equalToConstant: ConstraintConstants.logoSize),
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.logoDistanceFromCenter),
            
            roomIdInputField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.inputFieldDistanceFromCenter),
            roomIdInputField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.inputFieldLeadingAnchor),
            roomIdInputField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            roomIdInputField.heightAnchor.constraint(equalToConstant: ConstraintConstants.inputFieldHeight),
            
            joinButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            joinButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            joinButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            joinButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            joinButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight),
        ])
        
        
    }
    
    
    
}
