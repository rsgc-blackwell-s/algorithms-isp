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
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        
        self.percentLabel.text = "\(Int(sender.value))"
        
        let percentText = self.percentLabel.text
        
        print (percentText)
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
        
        print ("Flip button pressed")
        
        let randomValue = arc4random_uniform(100)
        
        //var winCounter = 0
        
        //print (randomValue)
        
        //if (randomValue < self.percentLabel.text){
        //winCounter = winCounter+1
        }
    
    }



