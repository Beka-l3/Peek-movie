//
//  AppDelegate.swift
//  peek
//
//  Created by Bekzhan Talgat on 10.07.2022.
//

import UIKit



@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let entranceViewController = LogoViewController()
        window?.rootViewController = entranceViewController
        window?.makeKeyAndVisible()
        
        let loginPage = LoginViewController()
        let registrationPage = RegistrationViewController()
        let unauthorizedPage = UnauthorizedViewController(loginPage: loginPage, registrationPage: registrationPage)
        
        let joinRoomPage = JoinRoomViewController()
        let createRoomPage = CreateRoomViewController()
        let authorizedPage = AuthorizedViewController(joinRoomPage: joinRoomPage, createRoomPage: createRoomPage)
        
        
        let appCoordinator = AppCoordinator(
            unauthorizedPage: unauthorizedPage,
            authorizedPage: authorizedPage,
            appDelegate: self
        )
        
        
        loginPage.appCoordinator = appCoordinator
        registrationPage.appCoordinator = appCoordinator
        unauthorizedPage.appCoordinator = appCoordinator
        
        joinRoomPage.appCoordinator = appCoordinator
        createRoomPage.appCoordinator = appCoordinator
        authorizedPage.appCoordinator = appCoordinator
        
        return true
    }

}


extension AppDelegate: EntrancePage {
    func setEntrancePage(with viewController: UIViewController) {
        let rootNavigationController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = rootNavigationController
        
//        let navigationController = UINavigationController()
//        navigationController.viewControllers = [viewController]
//        window?.rootViewController = navigationController
    }
}
