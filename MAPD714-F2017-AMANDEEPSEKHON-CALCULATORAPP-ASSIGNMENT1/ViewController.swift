/*
 Name : Amandeep Kaur Sekhon
 Date :24 sep 2017
 Student id :300976886
 Description: Calculator Application
 Version 0.3 :add functions to the calculator app
 */
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
            
            
            
            if sign  == "+" || sign == "-" || sign == "x" || sign == "÷"
                {
                    
                    displayLabel.text = String (sender.titleLabel!.text!)
                    /*}else  if displayLabel.text == "-" {
                     displayLabel.text = String(sender.tag)
                     }else  if displayLabel.text == "x" {
                     displayLabel.text = String(sender.tag)
                     }else  if displayLabel.text == "÷" {
                     displayLabel.text = String(sender.tag)
                     }*/}
                else {
                    
            displayLabel.text = displayLabel.text! + sender.titleLabel!.text!
        }
    }
    }
    
    

    @IBAction func displayoperators(_ sender: UIButton) {
    
        // x = 13, ÷ = 14, - = 15, + = 16, =  = 17
        
        
        if displayLabel.text != ""
        {
            
            if sender.tag == 17
            {
                sign = "+"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "+"
            }else if sender.tag == 16
            {
                sign = "-"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "-"
            }else if sender.tag == 15
            {
                sign = "÷"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "÷"
            }else if sender.tag == 14
            {
                sign = "x"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "x"
            }
            else if sender.tag == 11
            {
                sign = ""
                firstNumber = 0
                SecondNumber = 0
                answerNumber = 0
                displayLabel.text = "0"
                
            }
                

            
            else if sender.tag == 18
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

