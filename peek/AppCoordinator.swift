//
//  AppCoordinator.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import UIKit

protocol EntrancePage {
    func setEntrancePage(with viewController: UIViewController)
}


final class AppCoordinator {
    
    private var unauthorizedPage: UnauthorizedViewController
    private var authorizedPage: AuthorizedViewController
    private weak var appDelegate: AppDelegate?
    
    init(
        unauthorizedPage: UnauthorizedViewController,
        authorizedPage: AuthorizedViewController,
        appDelegate: AppDelegate?
    ) {
        self.unauthorizedPage = unauthorizedPage
        self.authorizedPage = authorizedPage
        self.appDelegate = appDelegate
       
        setStartingPage()
    }
    
    private func setStartingPage() {
        guard let appDelegate = appDelegate else {
            return
        }
        
        if false {
            appDelegate.setEntrancePage(with: unauthorizedPage)
        } else {
            appDelegate.setEntrancePage(with: authorizedPage)
        }
    }
    
}
