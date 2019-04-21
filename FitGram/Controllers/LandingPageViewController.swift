//
//  LandingPageViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 4/12/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import PMSuperButton

class LandingPageViewController: UIViewController {
    
    let heartImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "heartbeat.png"))
        imageView.translatesAutoresizingMaskIntoConstraints = false //enables autolayout

        return imageView
    }()
    
    let welcomeTextView: UITextView = {
        let textView = UITextView()
        textView.text = "FitGram"
        textView.font = UIFont(name: "KohinoorBangla-Light", size: 70)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.textColor = #colorLiteral(red: 0.9689881206, green: 0.1678331792, blue: 0.1667780876, alpha: 1)
        return textView
    }()
    
    let signUpButton: PMSuperButton = {
        let button = PMSuperButton()
        button.cornerRadius = 10
        button.gradientStartColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        button.gradientEndColor = #colorLiteral(red: 0.6959176508, green: 0.1678331792, blue: 0.1667780876, alpha: 1)
        button.gradientEnabled = true
        button.gradientHorizontal = true
        button.ripple = true
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont(name: "KohinoorBangla-Light", size: 25)
        button.frame.size = CGSize(width: 500, height: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let loginButton: PMSuperButton = {
        let button = PMSuperButton()
        button.cornerRadius = 10
        button.gradientStartColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        button.gradientEndColor = #colorLiteral(red: 0.6959176508, green: 0.1678331792, blue: 0.1667780876, alpha: 1)
        button.gradientEnabled = true
        button.gradientHorizontal = true
        button.ripple = true
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont(name: "KohinoorBangla-Light", size: 25)
        button.frame.size = CGSize(width: 500, height: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpSubviews()
        addTapRecognizer()
        setupLayout()
        
    }
    
    private func setUpSubviews() {
        view.addSubview(heartImageView)
        view.addSubview(welcomeTextView)
        view.addSubview(signUpButton)
        view.addSubview(loginButton)
    }
    
    private func addTapRecognizer() {
        let tapGesture = UITapGestureRecognizer(target: self, action: "sendToSignUpVC")
        tapGesture.numberOfTapsRequired = 1
        signUpButton.addGestureRecognizer(tapGesture)
        loginButton.addGestureRecognizer(tapGesture)
    }
    
    func sendToSignUpVC() {
        print("send to Sign Up VC")
    }
    
    private func setupLayout() {
        heartImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heartImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        heartImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        heartImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        welcomeTextView.topAnchor.constraint(equalTo: heartImageView.bottomAnchor, constant: 25).isActive = true
        welcomeTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        welcomeTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        welcomeTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: heartImageView.bottomAnchor, constant: 200).isActive = true
        signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 40).isActive = true
        loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
}
