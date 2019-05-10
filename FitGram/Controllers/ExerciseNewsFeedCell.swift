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
    var name = "Kimmy"
    var timeStamp = "12:51:15 PM"
    var exercise = "Cycle"
    var caloriesBurned = 200
    var exerciseLabel = UILabel()
    
    override init(style _: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.value1, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        setupExerciseImageView()
        setupExerciseNewsLabel()
        setupTimeLabel()
    }
    
    private func setupExerciseImageView() {
        addSubview(exerciseImageView)
        let exerciseImg = #imageLiteral(resourceName: "bicycle (1)")
        exerciseImageView.image = exerciseImg
        exerciseImageView.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalToSuperview().inset(20)
            make.left.equalToSuperview().inset(20)
        }
    }
    
    private func setupExerciseNewsLabel() {
        let verb = exerciseName(name: exercise)
        let newsFeedText = name + " " + verb + " and burned " + String(caloriesBurned) + " calories!"
        exerciseLabel.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 16)
        exerciseLabel.text = newsFeedText
        addSubview(exerciseLabel)
        exerciseLabel.snp.makeConstraints { make in
            make.left.leftMargin.equalTo(exerciseImageView.snp_rightMargin).offset(10)
            make.top.equalToSuperview().inset(20)
        }
    }
    
    private func setupTimeLabel() {
        let timeLabel = UILabel()
        timeLabel.text = timeStamp
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
