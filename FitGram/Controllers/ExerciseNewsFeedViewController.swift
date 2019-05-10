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

struct Workouts {
    let workout: String
    let calories: Int
    let name: String
    let time: String
    
    init(workout: String, calories: Int, name: String, time: String) {
        self.workout = workout
        self.calories = calories
        self.name = name
        self.time = time
    }
}

class ExerciseNewsFeedViewController: UITableViewController {
    weak var labelMessage: UILabel!
    let db = Firestore.firestore()
    let timestamp = NSDate().timeIntervalSince1970
    var exercises = [Workouts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        tableView.separatorColor = .clear
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "Exercise"
        loadExercises()
        tableView.register(ExerciseNewsFeedCell.self, forCellReuseIdentifier: "cell")
    }
    
    func loadExercises() {
        db.collection("workouts").getDocuments { (doc, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in (doc?.documents)! {
                    self.exercises.append(Workouts(workout: document.get("workoutName") as! String, calories: document.get("caloriesBurned") as! Int, name: document.get("name") as! String, time: document.get("timeEntered") as! String))
                    print(self.exercises)
                }
                    self.tableView.reloadData()
            }
        }
        db.collection("workouts").addSnapshotListener { (snapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.exercises.removeAll()
                for document in (snapshot?.documents)! {
                    self.exercises.append(Workouts(workout: document.get("workoutName") as! String, calories: document.get("caloriesBurned") as! Int, name: document.get("name") as! String, time: document.get("timeEntered") as! String))
                    print(self.exercises)
                }
                    self.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return exercises.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ExerciseNewsFeedCell
        cell.setupViews(with: exercises[indexPath.row])
        print("😇\(exercises[indexPath.row])")
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
