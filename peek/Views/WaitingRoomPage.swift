//
//  WaitingRoomPage.swift
//  peek
//
//  Created by Bekzhan Talgat on 15.07.2022.
//

import UIKit


class WaitingRoomViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    
    private let idLabel: UILabel = Labels.getPrimaryLabel(texted: "ID", ofSize: 48)
    private let roomIdLabel: UILabel = Labels.getSecondaryLabel(texted: "roomId", ofSize: 48)
    
    let qrImageView: UIImageView = Images.getImageView(named: "QR")
    
    private let joinedLabel: UILabel = Labels.getPrimaryLabel(texted: "Joined:", ofSize: 36)
    private let joinedAmountLabel: UILabel = Labels.getSecondaryLabel(texted: "2", ofSize: 36)
    
    private let waitingLabel: UILabel = Labels.getSecondaryLabel(texted: "Waiting for admin to start", ofSize: 16)
    
    private lazy var quitButton: UIButton = {
        let btn = Buttons.getSecondaryButton(title: "Quit")
        btn.addTarget(self, action: #selector(quitButtonPressed), for: .touchUpInside)
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
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - - objc
    
    @objc private func quitButtonPressed() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - - func
    
    private func setupViews() {
        view.addSubview(qrImageView)
        view.addSubview(idLabel)
        view.addSubview(roomIdLabel)
        view.addSubview(joinedLabel)
        view.addSubview(joinedAmountLabel)
        view.addSubview(waitingLabel)
        view.addSubview(quitButton)
        
        
        NSLayoutConstraint.activate([
            qrImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 64),
            qrImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -64),
            qrImageView.heightAnchor.constraint(equalToConstant: view.frame.width - 64),
            qrImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -128),
            
            idLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 64),
            idLabel.bottomAnchor.constraint(equalTo: qrImageView.topAnchor, constant: -8),

            roomIdLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -64),
            roomIdLabel.bottomAnchor.constraint(equalTo: qrImageView.topAnchor, constant: -8),
            
            joinedLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 64),
            joinedLabel.topAnchor.constraint(equalTo: qrImageView.bottomAnchor, constant: 16),
            
            joinedAmountLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -64),
            joinedAmountLabel.topAnchor.constraint(equalTo: qrImageView.bottomAnchor, constant: 16),
            
            waitingLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            waitingLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            
            quitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter + ConstraintConstants.buttonHeight + ConstraintConstants.secondaryButtonDistanceFromPrimary),
            quitButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            quitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            quitButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            quitButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight)
        ])
    }
    
    
}
