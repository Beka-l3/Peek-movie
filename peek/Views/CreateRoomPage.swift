//
//  CreateRoomPage.swift
//  peek
//
//  Created by Bekzhan Talgat on 14.07.2022.
//

import UIKit


class CreateRoomViewController: UIViewController {
    
    
    public weak var appCoordinator: AppCoordinator?
    
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
        view.addSubview(startButton)
        view.addSubview(cancleButton)
        
        NSLayoutConstraint.activate([
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
