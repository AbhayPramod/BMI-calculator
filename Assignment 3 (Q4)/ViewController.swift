//
//  ViewController.swift
//  Assignment 3 (Q4)
//
//  Created by Abhay Pramod on 10/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var height: UITextField!
    
    var bmi : Double = 0
    
    func bmiCalc(){
        guard let heightInput = Double(height.text!), let weightInput = Double(weight.text!) else{
            return
        }
        
        bmi = weightInput / (heightInput * heightInput)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sharedBmi = bmi
        var destinationVC = segue.destination
        destinationVC.bm
    }
}

