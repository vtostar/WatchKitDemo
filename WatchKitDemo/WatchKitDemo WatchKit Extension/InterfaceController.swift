//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by Poya on 15/3/24.
//  Copyright (c) 2015年 wangqiang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var guessSlider: WKInterfaceSlider!  //the slider
    @IBOutlet weak var guessLabel: WKInterfaceLabel!  //the label displaying the guess number
    @IBOutlet weak var resultLabel: WKInterfaceLabel!  //wrong/correct label
    
    var guessNumber = 3;
    
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5);
        guessLabel.setText("Your guess:\(guessNumber)")
    }
    
    @IBAction func startGuess() {
        var randomNumber = Int(arc4random_uniform(6))   //生成0到5的随机数
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("Correct. You win!")
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
