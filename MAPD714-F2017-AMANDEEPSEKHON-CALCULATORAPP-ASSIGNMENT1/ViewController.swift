/*
 Name : Amandeep Kaur Sekhon
 Date :24 sep 2017
 Student id :300976886
 Description: Calculator Application
 Version 0.3 :add functions to the calculator app
 */
import UIKit

class ViewController: UIViewController {
    
    
    //-------------------------  Variables -------------------------

    var firstNumber: Double = 0;
    var SecondNumber: Double = 0;
    var answerNumber: Double = 0;
    var isDecimal:Bool = false
    var sign: String=""
  
    var performingMath: Bool = false

    //-------------------------  Outlets -------------------------

    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    //-------------------------  Action methods -------------------------

    @IBAction func displaynumbers(_ sender: UIButton) {
        if displayLabel.text == "0" {
            displayLabel.text = ""
        }
        if displayLabel.text == "0.0"{
            displayLabel.text = "0."
        }
        
        if performingMath == false
        {
            if displayLabel.text == "+" {
                displayLabel.text = String(sender.tag)
            }else  if displayLabel.text == "-" {
                displayLabel.text = String(sender.tag)
            }else  if displayLabel.text == "x" {
                displayLabel.text = String(sender.tag)
            }else  if displayLabel.text == "÷" {
                displayLabel.text = String(sender.tag)
            }
            else {
                
                displayLabel.text = displayLabel.text! + String(sender.tag)
            }
        }
        else if performingMath == true {
            
            displayLabel.text = String(sender.tag)
            //answerNumber = 0;
            performingMath = false;
        }
        
    }


    @IBAction func displayoperators(_ sender: UIButton)
    {
    
        // x = 14, ÷ = 15, - = 16, + = 17, =  = 18 C=11
        
        if displayLabel.text != ""
        
        {
        if sender.tag == 17
            {
                sign = "+"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "+";
            }else if sender.tag == 16
            {
                sign = "-"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "-";
            }else if sender.tag == 15
            {
                sign = "÷"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "÷";
            }else if sender.tag == 14
            {
                sign = "x"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "x";
            }
            else if sender.tag == 11
            {
                sign = ""
                firstNumber = 0;
                SecondNumber = 0;
                answerNumber = 0;
                displayLabel.text = "0";
               
                
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
                    
                    
                    let isInt = floor(answerNumber) == answerNumber
                    
                    if  SecondNumber == 0 {
                        displayLabel.text = "ERROR"
                    }
                    else    {
                        if  isInt == true   {
                            displayLabel.text = String(Int64(answerNumber))
                        }
                        else    {
                            displayLabel.text = String(answerNumber)
                        }

                    }
                }
               
                
            }
            
        }
        

    }
    
   //-------------------------decimal button -------------------------

    
    
   @IBAction func decimalbutton(_ sender: UIButton) {
//        if isDecimal==false
//        {
//            isDecimal = true
//            
//            if displayLabel.text == ""
//            {
//                firstNumber = Double("0" + ".")!
//                displayLabel.text = String(firstNumber)
//                
//            }
//            else
//            {
//                firstNumber = Double(displayLabel.text! + ".")!
//                displayLabel.text = displayLabel.text! + "."
//            }
//        }
//        isDecimal = true
    }
    
    //------------------------- percentage button -------------------------

    @IBAction func percentagebutton(_ sender: UIButton) {
    }
    
    
    
        //-------------------------plus/minus button -------------------------
    
    @IBAction func plusminusbutton(_ sender: UIButton) {
    }
    
    
    
    //------------------------- Inherited Methods -------------------------

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

