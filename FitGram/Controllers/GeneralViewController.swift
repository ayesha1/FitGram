//
//  GeneralViewController.swift
//  FitGram
//
//  Created by Ayesha Khan on 3/24/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//
import UIKit

class GeneralController: UIViewController {
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "dumbbell")
        
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor.lightGray
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setupConstraints()
    }
    
    // MARK: - Constraint methods
    func setupConstraints() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        constraint(titleLabel,  [.centerX, .centerY])
        view.addConstraints([
            NSLayoutConstraint(
                item: imageView, attribute: .bottom,
                relatedBy: .equal, toItem: titleLabel,
                attribute: .top, multiplier: 1, constant: -20),
            
            NSLayoutConstraint(
                item: titleLabel, attribute: .width,
                relatedBy: .equal, toItem: view,
                attribute: .width, multiplier: 1, constant: -200)
            ])
        
        constraint(imageView, [.centerX])
        view.addConstraints([
            NSLayoutConstraint(
                item: imageView, attribute: .width,
                relatedBy: .equal, toItem: nil,
                attribute: .notAnAttribute, multiplier: 1, constant: 100),
            
            NSLayoutConstraint(
                item: imageView, attribute: .height,
                relatedBy: .equal, toItem: nil,
                attribute: .height, multiplier: 1, constant: 100),
            ])
    }
    
    // MARK: - Helper methods
    func constraint(_ subview: UIView, _ attributes: [NSLayoutConstraint.Attribute]) {
        for attribute in attributes {
            view.addConstraint(
                NSLayoutConstraint(
                    item: subview, attribute: attribute,
                    relatedBy: .equal, toItem: view,
                    attribute: attribute, multiplier: 1, constant: 0)
            )
        }
    }
}
