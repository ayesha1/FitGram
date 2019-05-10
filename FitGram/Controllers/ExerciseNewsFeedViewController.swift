//
//  ExerciseNewsFeedViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import UIKit
import SnapKit
import Firebase

class ExerciseNewsFeedViewController: UITableViewController {
    weak var labelMessage: UILabel!
    let db = Firestore.firestore()
    let timestamp = NSDate().timeIntervalSince1970
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Exercise"
        var roundButton = UIButton(frame: CGRect(origin: CGPoint(x: self.view.frame.width / 2 - 25, y: self.view.frame.height - 70), size: CGSize(width: 50, height: 50)))
        //Button
        roundButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.navigationController?.view.addSubview(roundButton)
//        self.roundButton = UIButton(type: .custom)
//        self.roundButton.setTitleColor(UIColor.orange, for: .normal)
//        self.roundButton.addTarget(self, action: #selector(ButtonClick(_:)), for: UIControl.Event.touchUpInside)
//        self.view.bringSubviewToFront(roundButton)
    }
    
   
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
