//
//  ViewController.swift
//  UnitTestDemo
//
//  Created by iShrek on 12/21/19.
//  Copyright © 2019 iShrek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var resultlb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClick(_ sender: Any) {
        let number1 = first.text!
        let number2 = second.text!
        if number1.count == 0 || number2.count == 0 {
            return
        }
        
        let result = multiply(num1: Double(number1)!, num2: Double(number2)!)
        
        showResult(result: "\(result)")
    }
    
    func multiply(num1: Double, num2: Double) -> Double {
        return (num1 * num2)
    }
    
    func showResult(result: String) {
        resultlb.text = result
    }
    @IBAction func showAlerts(_ sender: Any) {
        let alerts : UIAlertController = UIAlertController.init(title: "Hello", message: "sups", preferredStyle: UIAlertController.Style.alert)
        alerts.addAction(UIAlertAction(title: "Dismiss", style: .default) { (action:UIAlertAction!) in
            print("Selected")
        })
        self .present(alerts, animated: false, completion: nil)
        
    }
    
}

