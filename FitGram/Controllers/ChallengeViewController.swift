//
//  ChallengeViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import SnapKit

class ChallengeViewController: UIViewController {
    let addExerciseView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let addFriendView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return view
    }()
    
    let addExerciseView1: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let addFriendView1: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return view
    }()
    
    let addExerciseView2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let addFriendView2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Challenge"
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))

        setupViews()
    }
    
    func setupViews() {
        view.addSubview(addExerciseView)
        self.addExerciseView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        //Add Workout
        view.addSubview(addFriendView)
        self.addFriendView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        
        view.addSubview(addExerciseView1)
        self.addExerciseView1.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addExerciseView.snp_bottomMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        //Add Workout
        view.addSubview(addFriendView1)
        self.addFriendView1.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addFriendView.snp_bottomMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        
        view.addSubview(addExerciseView2)
        self.addExerciseView2.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addExerciseView1.snp_bottomMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        //Add Workout
        view.addSubview(addFriendView2)
        self.addFriendView2.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addFriendView1.snp_bottomMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
    }
}
