//
//  AppDelegate.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import Tabby

class MainController: TabbyController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setIndex = 1
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    lazy var items: [TabbyBarItem] = [
        TabbyBarItem(controller: self.firstNavigation, image: "dumbbell"),
        TabbyBarItem(controller: self.secondController, image: "lightning-bolt-shadow"),
        TabbyBarItem(controller: self.thirdNavigation, image: "man-user")
    ]
    
    lazy var mainController: MainController = { [unowned self] in
        let controller = MainController(items: self.items)
        
        controller.delegate = self
        controller.translucent = false
        
        return controller
    }()

    lazy var firstNavigation: UINavigationController = UINavigationController(rootViewController: self.firstController)
    lazy var thirdNavigation: UINavigationController = UINavigationController(rootViewController: self.thirdController)

    lazy var firstController: ExerciseNewsFeedViewController = ExerciseNewsFeedViewController()
    lazy var secondController: ChallengeViewController  = ChallengeViewController()
    lazy var thirdController: ProfileViewController = ProfileViewController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Tabby.Constant.Color.background = UIColor.white
        Tabby.Constant.Color.selected = UIColor(red:0.22, green:0.81, blue:0.99, alpha:1.00)
        
        Tabby.Constant.Behavior.labelVisibility = .activeVisible
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainController
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate: TabbyDelegate {
    
    func tabbyDidPress(_ item: TabbyBarItem) {
        // Do your awesome transformations!
        if items.index(of: item) == 1 {
            mainController.barHidden = true
        }
        
        let when = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.mainController.barHidden = false
        }
    }
}
