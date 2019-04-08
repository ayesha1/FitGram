//
//  TabBarController.swift
//  FitGram
//
//  Created by Ayesha Khan on 4/7/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import SwipeableTabBarController
import UIKit

class TabBarController: SwipeableTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let exerciseNewsFeedVC = ExerciseNewsFeedViewController()
        let challangeNewsFeedVC = ChallengeViewController()
        let profileVC = ProfileViewController()
        
        if let viewControllers = viewControllers {
            selectedViewController = viewControllers[1]
        }
        
        /// Set the animation type for swipe
        swipeAnimatedTransitioning?.animationType = SwipeAnimationType.sideBySide
        
        /// Set the animation type for tap
        tapAnimatedTransitioning?.animationType = SwipeAnimationType.push
        
        /// if you want cycling switch tab, set true 'isCyclingEnabled'
        isCyclingEnabled = true
        
        /// Disable custom transition on tap.
        //tapAnimatedTransitioning = nil
        
        /// Set swipe to only work when strictly horizontal.
        //        diagonalSwipeEnabled = true
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Handle didSelect viewController method here
    }
}

