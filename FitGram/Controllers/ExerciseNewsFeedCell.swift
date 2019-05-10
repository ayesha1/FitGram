//
//  ExerciseNewsFeedCell.swift
//  FitGram
//
//  Created by Ayesha Khan on 5/10/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class ExerciseNewsFeedCell: UITableViewCell{
    var exerciseImageView = UIImageView()
    var exerciseLabel = UILabel()
    let workout = Workouts(workout: "", calories: 0, name: "", time: "")
    
    override init(style _: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.value1, reuseIdentifier: reuseIdentifier)
        setupViews(with: workout)
    }
    
    override func awakeFromNib() {
        //set this in xcode
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(with exercise: Workouts) {
        for view in contentView.subviews {
            view.removeFromSuperview()
        }
        let exerciseName = exercise.workout
        let caloriesBurned = exercise.calories
        let name = exercise.name
        let timeStamp = exercise.time
        print("😁\(exercise)")
        setupExerciseImageView(exerciseName: exerciseName)
        setupExerciseNewsLabel(name: name, exercise: exerciseName, caloriesBurned: caloriesBurned)
        setupTimeLabel(time: timeStamp)
    }
    
    private func setupExerciseImageView(exerciseName: String) {
        addSubview(exerciseImageView)
        let exerciseImg = getExerciseImage(name: exerciseName)
        exerciseImageView.image = exerciseImg
        exerciseImageView.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalToSuperview().inset(20)
            make.left.equalToSuperview().inset(20)
        }
    }
    
    func getExerciseImage(name: String) -> UIImage {
        switch name {
        case "Cycle":
            return #imageLiteral(resourceName: "bicycle (1)")
        case "Hike":
            return #imageLiteral(resourceName: "hiking (1)")
        case "Swim":
            return #imageLiteral(resourceName: "swimming (1)")
        case "Run":
            return #imageLiteral(resourceName: "runner (1)")
        default:
            return #imageLiteral(resourceName: "runner (1)")
        }
    }
    
    private func setupExerciseNewsLabel(name: String, exercise: String, caloriesBurned: Int) {
        let verb = exerciseName(name: exercise)
        let newsFeedText = name + " " + verb + " and burned " + String(caloriesBurned) + " calories!"
        exerciseLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 16)
        exerciseLabel.text = newsFeedText
        addSubview(exerciseLabel)
        exerciseLabel.snp.makeConstraints { make in
            make.left.leftMargin.equalTo(exerciseImageView.snp_rightMargin).offset(20)
            make.top.equalToSuperview().inset(20)
        }
    }
    
    private func setupTimeLabel(time: String) {
        let timeLabel = UILabel()
        timeLabel.text = String(time.dropLast(14))
        timeLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 12)
        addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(10)
            make.right.equalToSuperview().inset(10)
        }
    }
    
    func exerciseName(name: String) -> String {
        switch name {
        case "Cycle":
            return "cycled"
        case "Hike":
            return "hiked"
        case "Swim":
            return "swimmed"
        case "Run":
            return "ran"
        default:
            return "ran"
        }
    }
}
