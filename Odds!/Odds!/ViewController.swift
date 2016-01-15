//
//  ViewController.swift
//  Odds!
//
//  Created by Student on 2016-01-12.
//  Copyright © 2016 Scott Blackwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var streakNumber: UILabel!
        
    @IBOutlet weak var scoreNumber: UILabel!
    
    var percent: Int = 50
    var streakCounter = 0
    var buttonPressCount = 0
    var scoreCounter = 0
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        
        self.percentLabel.text = "\(Int(sender.value))"
        
        percent = Int(self.percentLabel.text!)!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FlipButton(sender: AnyObject) {
        
        // Set initial streak value
        self.streakNumber.text = String(streakCounter)
        
        // Set initial score value
        self.scoreNumber.text = String(scoreCounter)
        
        ++buttonPressCount
        
        print ("Flip button pressed")
        
        let randomValue = Int(arc4random_uniform(100))
        
        print ("randomValue", randomValue)
        
        print ("percent", percent)
        
        print ("winCounter", streakCounter)
        
        if (randomValue < percent) {
            streakCounter = streakCounter + 1
            
            scoreCounter = scoreCounter + ((100-percent)*2)
        }
        if (randomValue > percent) {
            streakCounter = 0
            
            scoreCounter = 0
        }
    
    }
    }



