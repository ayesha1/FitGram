//
//  ProfileViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
   
    let profilePic: UIImageView = {
        let image = UIImageView()
        image.frame =  CGRect(x: 0, y: 0, width: 200, height: 200)
        image.layer.cornerRadius =  image.frame.height/2
        image.layer.masksToBounds = true
        image.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        return image
    }()
    
    let addChallengeView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        return view
    }()
    
    let addFriendView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Profile"
        setupSubviews()
    }
    
    func setupSubviews() {
        
        //Profile Image
        view.addSubview(profilePic)
        self.profilePic.snp.makeConstraints { make in
            make.top.topMargin.equalTo(view.snp_topMargin).offset(5)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(10)
        }
        
        //Add Workout
        view.addSubview(addChallengeView)
        self.addChallengeView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(400)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        //Add Workout
        view.addSubview(addFriendView)
        self.addFriendView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(400)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
