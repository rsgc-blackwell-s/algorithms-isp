//
//  ViewController.swift
//  Odds!
//
//  Created by Student on 2016-01-12.
//  Copyright © 2016 Scott Blackwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //creating (outlet for) label to display the percent chosen by the user
    @IBOutlet weak var percentLabel: UILabel!
    
    //creating (outlet for) label to display the user's streak
    @IBOutlet weak var streakNumber: UILabel!
    
    //creating (outlet for) label to display the user's score
    @IBOutlet weak var scoreNumber: UILabel!
    
    //creating (outlet for) label to display result of 'coin flip'
    @IBOutlet weak var headsOrTails: UILabel!
    
    //creating variable to control 'percentLabel' outlet
    //variable starts at 50(%) automatically
    var percent: Int = 50
    
    //creating variable to control 'streakNumber' outlet
    var streakCounter = 0
    
    //creating variable for amount of time 'Flip!' button has been pressed
    var buttonPressCount = 0
    
    //creating variable to control 'scoreNumber' outlet
    var scoreCounter = 0
    
    //creating variable to control 'headsOrTails' outlet
    var headsOrTailsVar = String("?")
    
    
    //controls actions that occur when slider is in use
    @IBAction func tipSliderChanged(sender: UISlider) {
        
        //creates value for 'percentLabel' to use
        self.percentLabel.text = "\(Int(sender.value))"
        
        //creates new value for swift to recognize percent chosen by user
        percent = Int(self.percentLabel.text!)!
    }
    
    
    // do any additional setup after loading the view, typically from a nib.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //controls actions that occur when 'Flip!' button is pressed
    @IBAction func FlipButton(sender: AnyObject) {
        
        //every time button is pressed, counter increases by 1
        buttonPressCount += 1
        
        //print count (not viewable by user)
        print ("buttonPressCount", buttonPressCount)
        
        //tells writer every time button is pressed
        print ("Flip button pressed")
        
        //creates random value (between 1 and 100) every time 'Flip!' button is pressed
        let randomValue = Int(arc4random_uniform(100))
        
        //prints randomValue (not viewable by user)
        print ("randomValue", randomValue)
        
        //prints percent chosen by user (not viewable by user)
        print ("percent", percent)
        
        //prints user's streak (not viewable by user)
        print ("winCounter", streakCounter)
        
        //if user 'flips heads'...
        if (randomValue < percent) {
            
            //streak increases by 1
            streakCounter = streakCounter + 1
            
            //score is given based on probability (remainder)
            scoreCounter = scoreCounter + ((100-percent)*3)
            
            //'Heads!' is diplayed
            headsOrTailsVar = String("Heads!")
        }
        
        //if user 'flips tails'...
        if (randomValue > percent) {
            
            //streak is set back to 0
            streakCounter = 0
            
            //score is set back to 0
            scoreCounter = 0
            
            //'Tails!' is displayed
            headsOrTailsVar = String("Tails!")
        }
        
        //set initial streak value (display on storyboard)
        self.streakNumber.text = String(streakCounter)
        
        //set initial score value (display on storyboard)
        self.scoreNumber.text = String(scoreCounter)
        
        //set initial 'flip' result (display on storyboard)
        self.headsOrTails.text = String(headsOrTailsVar)
        
    }
}


