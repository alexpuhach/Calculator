import UIKit

class ViewController: UIViewController {
    
   

    @IBOutlet var buttons: [UIButton]!
    var zeroText:Bool = true
    var fullResult:Double = 0;
    var firstNum:Double = 0;
    var secondNum:Double = 0;
    var operation:Int!
    var mathSign:Bool = false
    
        
    
    @IBOutlet var result: UILabel!
    
    @IBAction func printAction(_ sender: UIButton) {
        
        zeroTextFunc()
        zeroText = false
        zeroTextFunc()
          
        if sender.tag == 11 && result.text != ""{
            if result.text!.contains("-") {
                result.text!.remove(at: result.text!.startIndex)
            } else {
                result.text = "-" + result.text!
            }
        }
        else if sender.tag == 11 && result.text == "" {
            result.text = "0"
        }
        else if sender.tag == 12 && result.text != ""{
            firstNum = Double(result.text!)!
            result.text = String(firstNum / 100)
            firstNum = 0
        }
        else if sender.tag == 12 && result.text == "" {
            result.text = "0"
        }
        else if sender.tag == 18 {
            if result.text!.contains("."){
                
            } else if result.text == "" {
                result.text = result.text! + "0."
            } else {
                result.text = result.text! + "."
            }
        } else {
            result.text = result.text! + String(sender.tag)
        }

        
    }
    @IBAction func action(_ sender: UIButton) {
        
        zeroText = true
       
        if mathSign == false {
            
            if sender.tag == 13 {
                firstNum = Double(result.text!)!
                result.text = ""
                operation = 13
                mathSign = true
            }
            else if sender.tag == 14 {
                firstNum = Double(result.text!)!
                result.text = ""
                operation = 14
                mathSign = true
            }
            else if sender.tag == 15 {
                firstNum = Double(result.text!)!
                result.text = ""
                operation = 15
                mathSign = true
            }
            else if sender.tag == 16 {
                firstNum = Double(result.text!)!
                result.text = ""
                operation = 16
                mathSign = true
            }
            
        }
        
        
        if sender.tag == 17 && mathSign == true {
            
            if operation == 13 {
                secondNum = Double(result.text!)!
                fullResult = firstNum / secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 14 {
                secondNum = Double(result.text!)!
                fullResult = firstNum * secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 15 {
                secondNum = Double(result.text!)!
                fullResult = firstNum - secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 16 {
                secondNum = Double(result.text!)!
                fullResult = firstNum + secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            
            mathSign = false
            
        } else if sender.tag == 17 && mathSign == false {
            
            if operation == 13 {
                
                fullResult = fullResult / secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 14 {
                
                fullResult = fullResult * secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 15 {
                
                fullResult = fullResult - secondNum
                result.text = ""
                result.text = String(fullResult)
            }
            else if operation == 16 {
                
                fullResult = fullResult + secondNum
                result.text = ""
                result.text = String(fullResult)
            }
        }
        
        if sender.tag == 10 {
            firstNum = 0
            secondNum = 0
            fullResult = 0
            result.text = ""
            zeroText = true
            mathSign = false

            zeroTextFunc()
        }
        
    }
    
    func zeroTextFunc() {
        if zeroText == true {
            result.text = "0"
        } else if zeroText == false && result.text == "0"{
            result.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     

}

