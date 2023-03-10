//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue:String = ""
    
    var calculateBrain = CalculateBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)m"
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.0f", sender.value)
        heightLabel.text = "\(height)Kg"
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height: height, weight: weight)
        
        // replace controller
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//
//        self.present(secondVC, animated: true,completion: nil)
        
        // navigasi controller
        self.performSegue(withIdentifier:"goToResult", sender: self)
    }
    
    // kirim data melalui navigasi
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculateBrain.getBmiValue()
        }
    }
}

