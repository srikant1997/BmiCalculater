//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Srikant Das on 08/08/21.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var adviceValue : String?
    var color: UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bmiLabel.text = bmiValue
        self.adviceLabel.text = self.adviceValue
        self.view.backgroundColor = self.color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateBmi(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
