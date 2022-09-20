//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Srikant Das on 08/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    var calculator = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        self.heightLabel.text = String(format: "%.2f", sender.value)+"m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        self.weightLabel.text = String(format: "%.0f", sender.value)+"kg"
        
    }
    
    @IBAction func calculateBmi(_ sender: UIButton) {
        let height = self.heightSlider.value
        let weight = self.weightSlider.value
        self.calculator.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "result", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result",let destination = segue.destination as? ResultViewController{
            let destinationVC = destination
            destinationVC.bmiValue = self.calculator.getBmi()
            destinationVC.adviceValue = self.calculator.getAdvice()
            destinationVC.color = self.calculator.getColor()
        }
         
    }
}

