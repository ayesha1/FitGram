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
        tableView.register(ExerciseNewsFeedCell.self, forCellReuseIdentifier: "myCell")
        tableView.rowHeight = 100
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Exercise"
    }
    
    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! ExerciseNewsFeedCell
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
