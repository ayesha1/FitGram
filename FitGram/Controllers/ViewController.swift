//
//  ViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupTabBar()
    }
    
    func setupTabBar() {
        let exerciseNewsFeedVC = ExerciseNewsFeedViewController()
        exerciseNewsFeedVC.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "dumbbell"), tag: 0)
        let challengeVC = ChallengeViewController()
        challengeVC.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "lightning-bolt-shadow"), tag: 0)
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "man-user"), tag: 0)

        self.viewControllers = [exerciseNewsFeedVC, challengeVC, profileVC]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}

