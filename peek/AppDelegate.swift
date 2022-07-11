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
        
        let unauthorizedPage = UnauthorizedViewController()
        let authorizedPage = AuthorizedViewController()
        
        let appCoordinator = AppCoordinator(
            unauthorizedPage: unauthorizedPage,
            authorizedPage: authorizedPage,
            appDelegate: self
        )
        
        unauthorizedPage.appCoordinator = appCoordinator
        authorizedPage.appCoordinator = appCoordinator
        
        let entranceViewController = LogoViewController()
        window?.rootViewController = entranceViewController
        window?.makeKeyAndVisible()
        
        return true
    }

}


extension AppDelegate: EntrancePage {
    func setEntrancePage(with viewController: UIViewController) {
//        let rootNavigationController = UINavigationController(rootViewController: viewController)
//        window?.rootViewController = rootNavigationController
        
        
        print("Some shit")
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        window?.rootViewController = navigationController
    }
}
