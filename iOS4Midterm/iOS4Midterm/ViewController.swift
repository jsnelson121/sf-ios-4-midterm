//
//  ViewController.swift
//  iOS4Midterm
//
//  Created by James Nelson on 2/3/16.
//  Copyright © 2016 James Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var currentNumber:String = "0"
    var firstNumberInSequence:Double = 0
    var secondNumberInSequence:Double = 0
    
    var plusMinusButtonActive = false
    
    var plusButtonActive = false
    var minusButtonActive = false
    var multiplyButtonActive = false
    var divideButtonActive = false
    
    var decimalCounter = 1
    
    @IBOutlet weak var topDisplayLabel: UILabel!
    
    //Clear, +/-, &, divide, x, -, +
    //Set as a bool so turn on and off
    @IBAction func clearButtonPressed(sender: AnyObject) {
        currentNumber = "0"
        topDisplayLabel.text = currentNumber
        firstNumberInSequence = 0
        secondNumberInSequence = 0
        
        plusMinusButtonActive = false
        
        plusButtonActive = false
        minusButtonActive = false
        multiplyButtonActive = false
        divideButtonActive = false
        
        decimalCounter = 1
    }
    
    @IBAction func plusMinusButton(sender: AnyObject) {
        if plusButtonActive == false {
            topDisplayLabel.text = "-\(currentNumber)"
            currentNumber = topDisplayLabel.text!
            plusButtonActive = true
        } else {
            topDisplayLabel.text = "\(currentNumber)"
            currentNumber = topDisplayLabel.text!
            plusButtonActive = false
        }
        // eliminate multiple "-"s
        if currentNumber.hasPrefix("--") {
            currentNumber.removeAtIndex(currentNumber.startIndex)
        }
    }
    

    
    @IBAction func nineButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "9"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func eightButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "8"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func sevenButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "7"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func sixButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "6"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func fiveButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "5"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func fourButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "4"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func threeButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "3"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func twoButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "2"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func oneButtonPressed(sender: AnyObject) {
        currentNumber = "\(currentNumber)" + "1"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func zeroButtonPressed(sender: AnyObject) {
        if currentNumber.hasPrefix("0") {
            currentNumber.removeAtIndex(currentNumber.startIndex)
        }
        currentNumber = "\(currentNumber)" + "0"
        topDisplayLabel.text = currentNumber
    }
    @IBAction func decimalButtonPressed(sender: AnyObject) {
        if decimalCounter < 2 {
        currentNumber = "\(currentNumber)" + "."
        topDisplayLabel.text = currentNumber
        }
        decimalCounter++
    }
    
//math functions
    @IBAction func plusButtonPressed(sender: AnyObject) {
        firstNumberInSequence = Double(topDisplayLabel.text!)!
        currentNumber = "0"
        topDisplayLabel.text = currentNumber
        plusButtonActive = true
    }
    @IBAction func minusButtonPressed(sender: AnyObject) {
        firstNumberInSequence = Double(topDisplayLabel.text!)!
        // exception to "00" rule created here bc it is not the first #
        currentNumber = "-0"
        topDisplayLabel.text = currentNumber
        minusButtonActive = true
    }
    
    @IBAction func multiplyButtonPressed(sender: AnyObject) {
        firstNumberInSequence = Double(topDisplayLabel.text!)!
        currentNumber = "0"
        topDisplayLabel.text = currentNumber
        multiplyButtonActive = true
    }
    
    @IBAction func divideButtonPressed(sender: AnyObject) {
        firstNumberInSequence = Double(topDisplayLabel.text!)!
        currentNumber = "0"
        topDisplayLabel.text = currentNumber
        divideButtonActive = true
    }
    
    
    
    
    // Equals Button
    @IBAction func equalSignPressedBeginComputation(sender: AnyObject) {
        if plusButtonActive == true {
            secondNumberInSequence = Double(topDisplayLabel.text!)!
            topDisplayLabel.text = "\(firstNumberInSequence + secondNumberInSequence)"
            plusButtonActive = false
        } else if minusButtonActive == true {
            secondNumberInSequence = Double(topDisplayLabel.text!)!
            topDisplayLabel.text = "\(firstNumberInSequence + secondNumberInSequence)"
            minusButtonActive = false
        } else if multiplyButtonActive == true {
            secondNumberInSequence = Double(topDisplayLabel.text!)!
            topDisplayLabel.text = "\(firstNumberInSequence * secondNumberInSequence)"
            multiplyButtonActive = false
        } else if divideButtonActive == true {
            secondNumberInSequence = Double(topDisplayLabel.text!)!
            topDisplayLabel.text = "\(firstNumberInSequence / secondNumberInSequence)"
            divideButtonActive = false
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topDisplayLabel.text = currentNumber
    }
    


}