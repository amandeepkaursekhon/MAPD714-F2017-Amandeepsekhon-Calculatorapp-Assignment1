//
//  ViewController.swift
//  MAPD714-F2017-AMANDEEPSEKHON-CALCULATORAPP-ASSIGNMENT1
//
//  Created by Amandeep Sekhon on 2017-09-25.
//  Copyright © 2017 Amandeep Sekhon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Double = 0
    var SecondNumber: Double = 0
    var answerNumber: Double = 0
    var sign = ""
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func displaynumbers(_ sender: UIButton) {
    
    if displayLabel.text == "0"
    { displayLabel.text = "" }
        
        
        if answerNumber == 0
        {
            if displayLabel.text == "+" {
                displayLabel.text = String(sender.titleLabel!.text!)
            }else  if displayLabel.text == "-" {
                displayLabel.text = String(sender.titleLabel!.text!)
            }else  if displayLabel.text == "x" {
                displayLabel.text = String(sender.titleLabel!.text!)
            }else  if displayLabel.text == "÷" {
                displayLabel.text = String(sender.titleLabel!.text!)
            }
            else {
                displayLabel.text = displayLabel.text! + sender.titleLabel!.text!
            }
        }
    }
    
    

    @IBAction func displayoperators(_ sender: UIButton) {
    
        // x = 13, ÷ = 14, - = 15, + = 16, =  = 17
        
        
        if displayLabel.text != ""
        {
            
            if sender.tag == 16
            {
                sign = "+"
                firstNumber = Double(displayLabel.text!)!
            }else if sender.tag == 15
            {
                sign = "-"
                firstNumber = Double(displayLabel.text!)!
            }else if sender.tag == 14
            {
                sign = "÷"
                firstNumber = Double(displayLabel.text!)!
            }else if sender.tag == 13
            {
                sign = "x"
                firstNumber = Double(displayLabel.text!)!
            }else if sender.tag == 17
            {
                if firstNumber != 0 {
                    
                    SecondNumber = Double(displayLabel.text!)!
                    
                    if sign == "+"{
                        answerNumber = firstNumber + SecondNumber
                                            }else if sign == "-"{
                        answerNumber = firstNumber - SecondNumber
                    }else if sign == "÷"{
                        answerNumber = firstNumber / SecondNumber
                    }else if sign == "x"{
                        answerNumber = firstNumber * SecondNumber
                    }
                    displayLabel.text = String(answerNumber)

                }
                
            }
            
        }
        

    }
    
    
    @IBAction func decimalbutton(_ sender: UIButton) {
    }
  
    
   
    @IBAction func percentagebutton(_ sender: UIButton) {
    }
    
    
    @IBAction func plusminusbutton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

