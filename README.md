
# FitGram
<div>Icons made by <a href="https://www.freepik.com/" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" 			    title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 			    title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
<a href="https://www.youtube.com/watch?v=sDNA9aeJOz8">Video Demo</a>

<div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" 			    title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 			    title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Schema](#Schema)

## Overview
### Description
This app lets fitness become more social with allowing you and your friends to see each other's workout and challenge them.

### App Evaluation
- **Category:** Social Networking / Fitness
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as tinder or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Analyzes users workouts. Allows the user or their friends to challenge them to a workout.
- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people would be organized into age groups.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how deep their social and fitness life is, and what exactly they're looking for.
- **Scope:** First we would start with having people sign up and add friends to see each others workouts and challenges. It can become larger as the app grows and might add a tab for fitness videos or keeping track of water intake.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* ~User logs in to app~
* User access previous workouts and preference settings
* User can add friends and challenge them to a workout
* User can see their workouts and their friends workouts.
* Profile pages for each user
* Settings (Accesibility, Notification, General, etc.)

**Optional Nice-to-have Stories**

* Fitness video tabs
* Water intake counter
* Streaks on workouts for the User

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
* Profile Screen 
* Exercise Newsfeed Screen - User can view their workouts along with their friends workouts
* Challenge Screen - User can select a friend to challenge them on a workout.
* Settings Screen

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Exercise Newsfeed
* Challenge
* Profile -> Settings

Optional:
* Fitness Videos
* Water Intake Tracker

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Challenges -> Challenges a friend with a subview ontop
* Profile -> Settings

## Wireframes
<img src="https://imgur.com/uZgHIqv.jpg" width=800><br>

### [BONUS] Digital Wireframes & Mockups
<p float="left">
<img src="https://imgur.com/JL5CnEK.jpg" height=400 hspace="20">
<img src="https://imgur.com/axReeOU.jpg" height=400 hspace="20">
<img src="https://imgur.com/Hc355ko.jpg" height=400 hspace="20">
<img src="https://imgur.com/U5a9MBb.jpg" height=400 hspace="20">
</p>

### [BONUS] Interactive Prototype
<img src="https://media.giphy.com/media/1Ye8AegwWymakoKwpc/giphy.gif" width=200>


## Schema
### Model

| Propery       | Type          | Description  |
| ------------- |:-------------:| -------------:|
|  objectId    | String | unique id for the user post (default field) |
|  author    |    Pointer to User	   | image author |
| updatedAt  |  CalorieCount      |  calories after last excercise  |
|  author    |    Pointer to User	   | image author |
| competition  |  Boolean      |  whether won or lost challenge excercies  |

### Networking
* Get calores burned
* Get distanceWalkingRunning
* Get heartRate
```
 let infoToWrite = Set([
                HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
                HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
                HKObjectType.quantityType(forIdentifier: .heartRate)!,
                HKObjectType.workoutType()
                ])
            
            
            
            healthStore.requestAuthorization(toShare: infoToWrite,
                                             read: infoToRead,
                                             completion: { (success, error) in
                                                self.delegate?.workout(manager: self,
                                                                       didAuthorizeAccess: success,
                                                                       error: error)
                                                
            })
        } else {
        
        healthStore.requestAuthorization(toShare: infoToWrite,
                                             read: infoToRead,
                                             completion: { (success, error) in
                                                self.delegate?.workout(manager: self,
}
```
### Video Progress

* App Demo
<img src='http://g.recordit.co/NODSEuK70j.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


<img src='http://g.recordit.co/trmHw68ddp.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


* Sign UP
<img src='https://media.giphy.com/media/S93nS3Tdb4mgexmivX/giphy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

* Login
<img src='https://media.giphy.com/media/kdEndvncwaeBwKUToQ/giphy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

* Multiple View Controllers
<img src='http://g.recordit.co/wDyvwE9JTb.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

* Multiple View Controllers
<img src='https://media.giphy.com/media/Rj0EKXLpcmjssMfoKY/giphy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />




