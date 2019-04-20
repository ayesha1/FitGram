//
//  LandingPageViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 4/12/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {
    
    let heartImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "heartbeat.png"))
        imageView.translatesAutoresizingMaskIntoConstraints = false //enables autolayout

        return imageView
    }()
    
    let welcomeTextView: UITextView = {
        let textView = UITextView()
        textView.text = """
                        Welcome
                        to FitGram!
                        """
        textView.font = UIFont(name: "KohinoorBangla-Light", size: 50)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.textColor = #colorLiteral(red: 0.9689881206, green: 0.1678331792, blue: 0.1667780876, alpha: 1)
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(heartImageView)
        view.addSubview(welcomeTextView)
        setupLayout()
        
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
    }
}
