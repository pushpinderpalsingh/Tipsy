//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPttButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var spltNumberLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    var tipValue : Float?
    var nosOfPeople : Double?
    var result : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPttButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        tipValue = (sender.titleLabel?.text! as! NSString).floatValue/100.0
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        spltNumberLabel.text = String(format: "%.0f", sender.value)
        nosOfPeople = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        let bill = (billTextField.text as! NSString).floatValue
        
        result = Float(bill + bill*(tipValue ?? 0.1))/Float(nosOfPeople ?? 2)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.results = String(format: "%.1f", result ?? 0000)
        destinationVC.detail = "Split between \(nosOfPeople ?? 2), with \((tipValue ?? 10)*100)% tip"
    }}

