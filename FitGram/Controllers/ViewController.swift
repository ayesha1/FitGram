//
//  ViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import CBFlashyTabBarController

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func setupTabBar() {

        let exerciseNewsFeedVC = ExerciseNewsFeedViewController()
        exerciseNewsFeedVC.tabBarItem = UITabBarItem(title: "NewsFeed", image: #imageLiteral(resourceName: "dumbbell"), tag: 0)
        let challengeVC = ChallengeViewController()
        challengeVC.tabBarItem = UITabBarItem(title: "Challenge", image: #imageLiteral(resourceName: "lightning-bolt-shadow"), tag: 0)
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "man-user"), tag: 0)

        let tabBarController = CBFlashyTabBarController()
        tabBarController.viewControllers = [exerciseNewsFeedVC, challengeVC, profileVC]
        navigationController?.pushViewController(tabBarController, animated: true)
//        let topViewController = UIApplication.shared.keyWindow?.rootViewController
//        topViewController?.present(tabBarController, animated: true, completion: nil)
//
////        self.present(tabBarController, animated: true, completion: nil)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

