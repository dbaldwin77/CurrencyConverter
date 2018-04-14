//
//  ViewController.swift
//  currencyConverter
//
//  Created by David Baldwin on 4/12/18.
//  Copyright © 2018 David Baldwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBOutlet weak var pound: UILabel!
    @IBOutlet weak var yen: UILabel!
    @IBOutlet weak var euro: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.text = "0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        if let text = textField.text {
            if let text2 = Double(text) {
                dollarAmount = text2
                
                let poundF = String(dollarAmount * poundRate)
                let forP = String(format: "£%.2f", Double(poundF)!)
                pound.text = forP
                
                let yenF = String(dollarAmount * yenRate)
                let forY = String(format: "¥%.2f", Double(yenF)!)
                yen.text = forY
                
                let euroF = String(dollarAmount * euroRate)
                let forE = String(format: "€%.2f", Double(euroF)!)
                euro.text = forE
                self.resignFirstResponder()
            }
            else
            {
                print("error")
                clear(UIEvent.self)
            }
        }
        else
        {
            print("error")
            clear(UIEvent.self)
        }
    }
    
    @IBAction func convert(_ sender: Any) {
        
        if let text = textField.text {
            if let text2 = Double(text) {
            dollarAmount = text2
        
        let poundF = String(dollarAmount * poundRate)
                let forP = String(format: "£%.2f", Double(poundF)!)
        pound.text = forP
       
        let yenF = String(dollarAmount * yenRate)
        let forY = String(format: "¥%.2f", Double(yenF)!)
        yen.text = forY
    
        let euroF = String(dollarAmount * euroRate)
        let forE = String(format: "€%.2f", Double(euroF)!)
        euro.text = forE
       textField.resignFirstResponder()
        }
        else
        {
          print("error")
            clear(UIEvent.self)
        }
        }
        else
        {
         print("error")
            clear(UIEvent.self)
        }
    }

    @IBAction func clear(_ sender: Any) {
         textField.text = "0.00"
         pound.text = "0.00"
         yen.text = "0.00"
         euro.text = "0.00"
    }
}

