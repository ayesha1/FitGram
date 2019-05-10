//
//  ProfileViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import SnapKit
import Firebase
import AlamofireImage

class ProfileViewController: UIViewController {
    let db = Firestore.firestore()
    let auth = Auth.auth()
    var imageFromFirestore = #imageLiteral(resourceName: "user")
    var selectedImage: UIImage?
     let timestamp = NSDate().timeIntervalSince1970
    let date = Date()
    
    lazy var profilePic: UIImageView = {
        let image = UIImageView()
        image.frame =  CGRect(x: 0, y: 0, width: 200, height: 200)
        image.layer.cornerRadius =  image.frame.height/2
        image.layer.masksToBounds = true
        image.isUserInteractionEnabled = true
        var imageProfile = UIImage()
        print("😕\(self.date.description)")
        return image
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
        nameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let userName = Auth.auth().currentUser?.displayName?.description
        nameLabel.text = userName
        return nameLabel
    }()
    
    let workoutLabel: UILabel = {
        let workoutLabel = UILabel()
        workoutLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 18)
        workoutLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        workoutLabel.text = "Workouts"
        return workoutLabel
    }()
    

    let challengeLabel: UILabel = {
        let challengeLabel = UILabel()
        challengeLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 18)
        challengeLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        challengeLabel.text = "Challenge"
        return challengeLabel
    }()
    
    
    let friendsLabel: UILabel = {
        let friendsLabel = UILabel()
        friendsLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 18)
        friendsLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        friendsLabel.text = "Friends"
        return friendsLabel
    }()
    
    ////////////////
    
    let workoutCount: UILabel = {
        let workoutCount = UILabel()
        workoutCount.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 25)
        workoutCount.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        workoutCount.text = "4"
        return workoutCount
    }()
    
    
    let challengeCount: UILabel = {
        let challengeCount = UILabel()
        challengeCount.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 25)
        challengeCount.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        challengeCount.text = "2"
        return challengeCount
    }()
    
    let friendsCount: UILabel = {
        let friendsCount = UILabel()
        friendsCount.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 25)
        friendsCount.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        friendsCount.text = "48"
        return friendsCount
    }()
    
    
    let logoutView: UIImageView = {
        let image = UIImageView()
        image.frame =  CGRect(x: 0, y: -5, width: 50, height: 50)
        image.layer.cornerRadius =  image.frame.height/2
        image.layer.masksToBounds = true
        image.backgroundColor = #colorLiteral(red: 0.1754914722, green: 0.8503269947, blue: 1, alpha: 1)
        let img = scaleUIImageToSize(image: #imageLiteral(resourceName: "logout"), size: CGSize(width: 50, height: 50))
        image.image = img
        image.clipsToBounds = true
        image.isUserInteractionEnabled = true
        return image
    }()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Profile"
        setupSubviews()
        
        setUpGestures()
    }
    
    func setupSubviews() {
        //Profile Image
        view.addSubview(profilePic)
        
        self.profilePic.snp.makeConstraints { make in
            make.top.topMargin.equalTo(view.snp_topMargin).offset(5)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        
        let img = ProfileViewController.scaleUIImageToSize(image: #imageLiteral(resourceName: "user"), size: CGSize(width: 200, height: 200))
        profilePic.image = img
        
        //Name Label
        view.addSubview(nameLabel)
        self.nameLabel.snp.makeConstraints { make in
            make.left.leftMargin.equalTo(profilePic.snp_rightMargin).offset(15)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(175)
        }
        
        //Add WorkoutLabel
        view.addSubview(workoutLabel)
        self.workoutLabel.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(100)
            make.leftMargin.leftMargin.equalTo(view.snp_leftMargin).offset(20)
        }
        
        //Add ChallengeLabel
        view.addSubview(challengeLabel)
        self.challengeLabel.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(100)
            make.leftMargin.leftMargin.equalTo(view.snp_leftMargin).offset(168)
        }
        
        //Add friendsLabel
        view.addSubview(friendsLabel)
        self.friendsLabel.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(100)
            make.leftMargin.leftMargin.equalTo(view.snp_rightMargin).offset(-60)
        }
        
        //Add workoutCount Label
        view.addSubview(workoutCount)
        self.workoutCount.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(75)
            make.leftMargin.leftMargin.equalTo(view.snp_leftMargin).offset(50)
        }

        //Add challengeCount label
        view.addSubview(challengeCount)
        self.challengeCount.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(75)
            make.leftMargin.leftMargin.equalTo(view.snp_leftMargin).offset(198)
        }

        //Add friendCount label
        view.addSubview(friendsCount)
        self.friendsCount.snp.makeConstraints {  make in
            make.top.topMargin.equalTo(profilePic.snp_bottomMargin).offset(75)
            make.leftMargin.leftMargin.equalTo(view.snp_rightMargin).offset(-50)
        }

        //Settings Image
        view.addSubview(logoutView)
        self.logoutView.snp.makeConstraints { make in
            make.top.topMargin.equalTo(view.snp_topMargin).offset(25)
            make.left.leftMargin.equalTo(profilePic.snp_rightMargin).offset(130)
        }
        
        //Add Workout
        view.addSubview(addExerciseView)
        self.addExerciseView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(400)
            make.left.leftMargin.equalTo(view.snp_leftMargin).offset(2)
        }
        setUpStreak()
        
        //Add Workout
        view.addSubview(addFriendView)
        self.addFriendView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(180)
            make.top.topMargin.equalTo(view.snp_topMargin).offset(400)
            make.right.rightMargin.equalTo(view.snp_rightMargin).offset(-2)
        }
        setUpAddFriend()
    }
    
    func setUpStreak() {
        let addStreakImageView = UIImageView()
        addStreakImageView.layer.masksToBounds = true
        addStreakImageView.isUserInteractionEnabled = true
        addStreakImageView.image = #imageLiteral(resourceName: "stretching-exercises")
        addExerciseView.addSubview(addStreakImageView)
        addStreakImageView.snp.makeConstraints { make in
            make.top.topMargin.equalTo(addExerciseView.snp_topMargin).offset(10)
            make.left.leftMargin.equalTo(addExerciseView.snp_leftMargin).offset(10)
        }
    }
    
    func setUpAddFriend() {
        let addFriendImageView = UIImageView()
        addFriendImageView.layer.masksToBounds = true
        addFriendImageView.isUserInteractionEnabled = true
        addFriendImageView.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        addFriendImageView.image = #imageLiteral(resourceName: "add-friend (4)")
        addFriendView.addSubview(addFriendImageView)
        addFriendImageView.snp.makeConstraints { make in
            make.top.topMargin.equalTo(addFriendView.snp_topMargin).offset(10)
            make.left.leftMargin.equalTo(addFriendView.snp_leftMargin).offset(10)
        }
    }
    
    func setUpGestures() {
        let tapForLogout = UITapGestureRecognizer(target: self, action: #selector(logoutClicked(_:)))
        logoutView.addGestureRecognizer(tapForLogout)
        
        let tapForProfilePic = UITapGestureRecognizer(target: self, action: #selector(handleSelectProfilePic))
        profilePic.addGestureRecognizer(tapForProfilePic)
        
        let tapForAddEx = UITapGestureRecognizer(target: self, action: #selector(ButtonClick(_:)))
        addExerciseView.addGestureRecognizer(tapForAddEx)
    }
    
    @objc func logoutClicked(_ sender: UIButton) {
        try! Auth.auth().signOut()
        let landingPage = LandingPageViewController()
        self.present(landingPage, animated: true, completion: nil)
    }
}

extension ProfileViewController {
    /*
     Image Resizing Techniques: http://bit.ly/1Hv0T6i
     */
    class func scaleUIImageToSize( image: UIImage, size: CGSize) -> UIImage {
        let hasAlpha = false
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(size, !hasAlpha, scale)
        image.draw(in: CGRect(origin: .zero, size: size))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return scaledImage!
    }
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @objc func handleSelectProfilePic() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        picker.mediaTypes = ["public.image", "public.movie"]
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("😇\(info)")
        let size = CGSize(width: 200, height: 200)
        if let image = info[.originalImage] as? UIImage {
            let img = image.af_imageScaled(to: size)
            print("imgEdited\(img)")
            selectedImage = image
            self.profilePic.image = img
            self.profilePic.setNeedsDisplay()
        }
        else if let image = info[.editedImage] as? UIImage {
            let img = image.af_imageScaled(to: size)
            print("imgOriginal\(img)")
            selectedImage = img
            let imageURL = info[.imageURL]
            storeImageInFB(url: imageURL as! URL)
            self.profilePic.image = img
            self.profilePic.setNeedsDisplay()
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func storeImageInFB(url: URL) {
        guard let userId = self.auth.currentUser?.uid else { return }
        
        let changeRequest = self.auth.currentUser?.createProfileChangeRequest()
        changeRequest?.photoURL = url
        changeRequest?.commitChanges(completion: { (error) in
            print("Error in changing image \(error)")
        })
        
        self.db.collection("users").document(userId).setData(["imageURL": url.absoluteString], merge: true)
        
    }
}
