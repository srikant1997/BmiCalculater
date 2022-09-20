//
//  CalculatorBrain.swift
//  BMI Calculator

//

import UIKit


struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBmi(height:Float,weight:Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5{
            self.bmi = BMI(value: bmiValue, advice: "Eat More.Get Healthy!!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9{
            self.bmi = BMI(value: bmiValue, advice: "You are super fit!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            self.bmi = BMI(value: bmiValue, advice: "Eat Less.Get Healthy!!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    func getBmi() -> String{
        return String(format: "%.1f",self.bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? UIColor.systemRed
    }
}
