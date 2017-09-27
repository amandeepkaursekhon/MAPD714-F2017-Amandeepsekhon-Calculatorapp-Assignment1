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

    var firstNumber: Double = 0;                                    // Here variables are defined for the whole application
    var SecondNumber: Double = 0;
    var answerNumber: Double = 0;
    var isDecimal:Bool = false
    var sign: String=""
    var finalNumber: Double = 0;
    var accumulation:Double!
    var number:Double = 0;
  
    var performingMath: Bool = false

    //-------------------------  Outlets -------------------------

    
    @IBOutlet weak var displayLabel: UILabel!                        //label is declared as a outlet
    
    
    //-------------------------  Action methods -------------------------

    @IBAction func displaynumbers(_ sender: UIButton) {
        
        //0-9 numbers are included in one method that performs the different activities (operators like add,subtract,multilpy,divison)
      
        if(displayLabel.text == "ERROR")    {
            
            //if the display text shows the error then it will replace by other numbers when user wants to perform the other functions
            
            displayLabel.text = ""
        }
        if displayLabel.text == "0" {
            displayLabel.text = ""
        }
        if displayLabel.text == "0.0"{                //zero will be replaced by other numbers while performing the action
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
            
                displayLabel.numberOfLines = 1;
                
                //this line is used for adjust the font size of label in case of long result
             
                displayLabel.adjustsFontSizeToFitWidth = true;
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
        
        //operators are put in one function that performs the action (selects by the user)
    {
    
        // x = 14, ÷ = 15, - = 16, + = 17, =  = 18 C=11              //tags are used for the understanding of different buttons
        
        if displayLabel.text != ""
        
        {
        if sender.tag == 17                                         //add operation
            {
                sign = "+"
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "+";
            }else if sender.tag == 16
            {
                sign = "-"                                          //minus operation
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "-";
            }else if sender.tag == 15
            {
                sign = "÷"                                          //divison operation
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "÷";
            }else if sender.tag == 14
            {
                sign = "x"                                          //multiply operation
                firstNumber = Double(displayLabel.text!)!
                  displayLabel.text = "x";
            }
            else if sender.tag == 11                                //reset button for clearing the previous value
            {
                sign = ""
                firstNumber = 0;
                SecondNumber = 0;
                answerNumber = 0;
                displayLabel.text = "0";
                isDecimal = false;
                
               
                
            }
                

            
            else if sender.tag == 18                             //equal button
            {
                if firstNumber != 0
                {
                    
                    SecondNumber = Double(displayLabel.text!)!
                    print(SecondNumber)
                    print(sign)
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
                    
                    if  SecondNumber == 0 && sign == "÷" {
                        displayLabel.text = "ERROR"
                        
                        
                        //if any number is divided by zero then it will show error
                        
                        
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

    
    
   @IBAction func decimalbutton(_ sender: UIButton) {         //only one decimal is clicked in one string
    
    
    number = Double(displayLabel.text!)!
    if (number - floor(number) > 0.0000000000001)
    { isDecimal = true
    }
    if isDecimal==false
        {
            isDecimal = true
          
            
            if displayLabel.text == ""
            {
                firstNumber = Double("0" + ".")!
                displayLabel.text = String(firstNumber)
           }
          else
           {
               firstNumber = Double(displayLabel.text! + ".")!
               displayLabel.text = displayLabel.text! + "."
           }
        }
       isDecimal = true
    }
    
    //------------------------- percentage button -------------------------

    @IBAction func percentagebutton(_ sender: UIButton) {
        
        //percent code has functionality for instance : first number =
        
        if displayLabel.text != ""
            
        {
            if sender.tag == 12
            {
                if firstNumber == 0{
                    firstNumber = Double(displayLabel.text!)!
                    firstNumber = firstNumber / 100;
                    displayLabel.text = String(firstNumber)
                }
                else    {
                    SecondNumber = Double(displayLabel.text!)!
                    print(SecondNumber)
                    accumulation = (firstNumber * SecondNumber)
                    accumulation = accumulation / 100
                    displayLabel.text = String(accumulation)
                }
            
                
            }
    
            }}
    
    
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

