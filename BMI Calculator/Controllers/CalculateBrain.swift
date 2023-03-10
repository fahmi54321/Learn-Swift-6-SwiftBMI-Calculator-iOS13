//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Fahmi Aziz on 10/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain{
    
    var bmi:Float = 0.0
    
    func getBmiValue()-> String{
        let bmiValue = String(format: "%.1f", bmi)
        return bmiValue
    }
    
    mutating func calculateBMI(height:Float,weight:Float)  {
        bmi = weight/pow(height, 2)
    }
}
