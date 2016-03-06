//
//  ViewController.swift
//  MiniCalculator
//
//  Created by Terry Zhao on 15/1/27.
//  Copyright (c) 2015年 Terry Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var operand1 = ""
    var operand2 = ""
    var oper = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender: UIButton) {
        let labelText = sender.currentTitle
        switch labelText! {
        case "+","-","x","/" :
            self.oper = labelText!
        case "=":
            let oper1 = Int(self.operand1);
            let oper2 = Int(self.operand2)
            var result = ""
            switch self.oper {
            case "+" :
                result = "\(oper1!+oper2!)"
            case "-" :
                result = "\(oper1!-oper2!)"
            case "x" :
                result = "\(oper1!*oper2!)"
            case "/" :
                result = "\(oper1!/oper2!)"
            default:
                print("error")
            }
            self.resultLabel.text = result
            self.operand1 = result
            self.operand2 = ""
            self.oper = ""
        case "C" :
            self.resultLabel.text = "0"
            self.operand1 = ""
            self.operand2 = ""
            self.oper = ""
        default:
            if self.oper == "" {
                self.operand1 += labelText!
                self.resultLabel.text = operand1
            } else {
                self.operand2 += labelText!
                self.resultLabel.text = operand2
            }
        }

    }

}

