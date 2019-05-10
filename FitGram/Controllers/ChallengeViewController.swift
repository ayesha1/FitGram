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
        view.isUserInteractionEnabled = true
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
        view.isUserInteractionEnabled = true
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
        view.isUserInteractionEnabled = true
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return view
    }()
    
    let nathanLabel: UILabel = {
        let nathanLabel = UILabel()
        nathanLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        nathanLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nathanLabel.text = "Nathan"
        return nathanLabel
    }()
    
    let georgeLabel: UILabel = {
        let georgeLabel = UILabel()
        georgeLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        georgeLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        georgeLabel.text = "George"
        return georgeLabel
    }()
    
    let huffLabel: UILabel = {
        let huffLabel = UILabel()
        huffLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        huffLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        huffLabel.text = "Huff"
        return huffLabel
    }()
    
    
    let liamLabel: UILabel = {
        let liamLabel = UILabel()
        liamLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        liamLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        liamLabel.text = "Liam"
        return liamLabel
    }()
    
    let kimmyLabel: UILabel = {
        let kimmyLabel = UILabel()
        kimmyLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        kimmyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        kimmyLabel.text = "Kimmy"
        return kimmyLabel
    }()
    
    let katieLabel: UILabel = {
        let katieLabel = UILabel()
        katieLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        katieLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        katieLabel.text = "Katie"
        return katieLabel
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
        addTapGesture()
    }
    
    func setupViews() {
        view.addSubview(addExerciseView)
        self.addExerciseView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        addExerciseView.addSubview(nathanLabel)
        nathanLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addExerciseView.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addExerciseView.snp_rightMargin).inset(10)
        }
        
        //Add Workout
        view.addSubview(addFriendView)
        self.addFriendView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        
        addFriendView.addSubview(georgeLabel)
        georgeLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addFriendView.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addFriendView.snp_rightMargin).inset(10)
        }
        
        view.addSubview(addExerciseView1)
        self.addExerciseView1.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addExerciseView.snp_bottomMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        addExerciseView1.addSubview(huffLabel)
        huffLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addExerciseView1.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addExerciseView1.snp_rightMargin).inset(10)
        }
        
        //Add Workout
        view.addSubview(addFriendView1)
        self.addFriendView1.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addFriendView.snp_bottomMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        
        addFriendView1.addSubview(liamLabel)
        liamLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addFriendView1.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addFriendView1.snp_rightMargin).inset(10)
        }
        
        view.addSubview(addExerciseView2)
        self.addExerciseView2.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addExerciseView1.snp_bottomMargin).offset(20)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        addExerciseView2.addSubview(kimmyLabel)
        kimmyLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addExerciseView2.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addExerciseView2.snp_rightMargin).inset(10)
        }
        
        //Add Workout
        view.addSubview(addFriendView2)
        self.addFriendView2.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(addFriendView1.snp_bottomMargin).offset(20)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        
        addFriendView2.addSubview(katieLabel)
        katieLabel.snp.makeConstraints { make in
            make.bottom.bottomMargin.equalTo(addFriendView2.snp_bottomMargin).inset(10)
            make.right.rightMargin.equalTo(addFriendView2.snp_rightMargin).inset(10)
        }
    }
    
    func addTapGesture() {
        let tapForChallenge = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        let tapForChallenge1 = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        let tapForChallenge2 = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        let tapForChallenge3 = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        let tapForChallenge4 = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        let tapForChallenge5 = UITapGestureRecognizer(target: self, action: #selector(ButtonClickForChallengeFriend(_:)))
        addExerciseView.addGestureRecognizer(tapForChallenge)
        addFriendView.addGestureRecognizer(tapForChallenge1)
        addExerciseView1.addGestureRecognizer(tapForChallenge2)
        addFriendView1.addGestureRecognizer(tapForChallenge3)
        addExerciseView2.addGestureRecognizer(tapForChallenge4)
        addFriendView2.addGestureRecognizer(tapForChallenge5)
    }
}

extension ChallengeViewController {
    @objc func ButtonClickForChallengeFriend(_ sender: UIButton){
        print("🤬")
        showInputDialogFriend()
    }
    
    func showInputDialogFriend() {
        //Creating UIAlertController and
        //Setting title and message for the alert dialog
        let alertController = UIAlertController(title: "Challenge Friend?", message: "", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Yes", style: .default) { (_) in
            
            //getting the input values from user
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        //adding the action to dialogbox
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //finally presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
    }
}
