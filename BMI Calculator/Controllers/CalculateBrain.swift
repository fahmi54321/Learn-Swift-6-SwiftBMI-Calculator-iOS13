//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Fahmi Aziz on 10/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain{
    
    var bmi:Bmi?
    
    func getBmiValue()-> String{
        
//        null safety 1
//        if(bmi != nil){
//            let bmiValue = String(format: "%.1f", bmi!.value)
//            return bmiValue
//        }else{
//            return "0.0"
//        }
        
//        null safety 2
//        if let safeBmi = bmi{
//            let bmiValue = String(format: "%1.f", safeBmi.value)
//            return bmiValue
//        }else{
//            return "0.0"
//        }
        
        // nul safety 3
        let bmiValue = String(format: "%1.f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height:Float,weight:Float)  {
        
        let bmiV = weight / pow(height, 2)
        
        if(bmiV < 18.5){
            bmi = Bmi(value: bmiV, advice: "Eat more pies!", color: UIColor.blue)
        }else if(bmiV < 24.9){
            bmi = Bmi(value: bmiV, advice: "Fit as a fiddle", color: UIColor.green)
        }else{
            bmi = Bmi(value: bmiV, advice: "Eat less pies", color: UIColor.red)
        }
        
        
    }
}
