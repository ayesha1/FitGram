//
//  ChallengeVCAddExercise.swift
//  FitGram
//
//  Created by Ayesha Khan on 5/9/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//
import SnapKit
import Firebase
import AlamofireImage
import UIKit

extension ProfileViewController {
    
    @objc func ButtonClick(_ sender: UIButton){
        print("🤬")
        showInputDialog()
    }
    
    func showInputDialog() {
        //Creating UIAlertController and
        //Setting title and message for the alert dialog
        let alertController = UIAlertController(title: "Enter Workout", message: "Enter Workout Name, Calories Burned and Time duration", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            //getting the input values from user
            let workoutName = alertController.textFields?[0].text
            let caloriesBurned = alertController.textFields?[1].text
            var ref: DocumentReference? = nil
            
            let dataToSave: [String: Any] = ["workoutName": workoutName, "timeEntered": self.date.description, "caloriesBurned": Int(caloriesBurned!), "name": Auth.auth().currentUser?.displayName?.description]
            ref = self.db.collection("workouts").addDocument(data: dataToSave) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
            }
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        //adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Workout Name"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Calories"
        }
        
        //adding the action to dialogbox
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //finally presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func ButtonClickForAddFriend(_ sender: UIButton){
        print("🤬")
        showInputDialogFriend()
    }
    
    func showInputDialogFriend() {
        //Creating UIAlertController and
        //Setting title and message for the alert dialog
        let alertController = UIAlertController(title: "Enter Friend's email", message: "", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            //getting the input values from user
            let email = alertController.textFields?[0].text
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        //adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Email"
        }
        //adding the action to dialogbox
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //finally presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
    }
    
}
