//
//  ExerciseNewsFeedViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import SnapKit

class ExerciseNewsFeedViewController: UIViewController {
    var roundButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Exercise"
        
        //Button
        self.roundButton = UIButton(type: .custom)
        self.roundButton.setTitleColor(UIColor.orange, for: .normal)
        self.roundButton.addTarget(self, action: #selector(ButtonClick(_:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(roundButton)
    }
    
    override func viewWillLayoutSubviews() {
        
        roundButton.layer.cornerRadius = roundButton.layer.frame.size.width/2
        roundButton.backgroundColor = UIColor.lightGray
        roundButton.clipsToBounds = true
        roundButton.setImage(#imageLiteral(resourceName: "plus"), for: .normal)
        roundButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roundButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            roundButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60),
            roundButton.widthAnchor.constraint(equalToConstant: 50),
            roundButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    @objc func ButtonClick(_ sender: UIButton){
        
        /** Do whatever you wanna do on button click**/
        print("🤬")
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
