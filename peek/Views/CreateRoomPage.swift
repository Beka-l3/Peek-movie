//
//  CreateRoomPage.swift
//  peek
//
//  Created by Bekzhan Talgat on 14.07.2022.
//

import UIKit


class CreateRoomViewController: UIViewController {
    
    public weak var appCoordinator: AppCoordinator?
    
    private let idLabel: UILabel = Labels.getPrimaryLabel(texted: "ID", ofSize: 48)
    private let roomIdLabel: UILabel = Labels.getSecondaryLabel(texted: "roomId", ofSize: 48)
    
    let qrImageView: UIImageView = Images.getImageView(named: "QR")
    
    private let joinedLabel: UILabel = Labels.getPrimaryLabel(texted: "Joined:", ofSize: 36)
    private let joinedAmountLabel: UILabel = Labels.getSecondaryLabel(texted: "1", ofSize: 36)
    
    private lazy var startButton: UIButton = {
        let btn = Buttons.getPrimaryButton(title: "Start")
        btn.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        return btn
    }()
    
    private lazy var cancleButton: UIButton = {
        let btn = Buttons.getSecondaryButton(title: "Cancle")
        btn.addTarget(self, action: #selector(cancleButtonPressed), for: .touchUpInside)
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
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - - objc
    @objc private func startButtonPressed() {
        print("Start clicked")
    }
    
    @objc private func cancleButtonPressed() {
        print("Cancle clicked")
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - - func
    
    private func setupViews() {
        view.addSubview(qrImageView)
        view.addSubview(idLabel)
        view.addSubview(roomIdLabel)
        view.addSubview(joinedLabel)
        view.addSubview(joinedAmountLabel)
        view.addSubview(startButton)
        view.addSubview(cancleButton)
        
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
            
            startButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            startButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.inputFieldTrailingAnchor),
            startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: ConstraintConstants.primaryButtonDisatnceFromCenter),
            startButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight),
            
            cancleButton.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: ConstraintConstants.secondaryButtonDistanceFromPrimary),
            cancleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ConstraintConstants.buttonLeadingAnchors),
            cancleButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: ConstraintConstants.buttonTrailingAnchors),
            cancleButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            cancleButton.heightAnchor.constraint(equalToConstant: ConstraintConstants.buttonHeight)
        ])
    }
}
