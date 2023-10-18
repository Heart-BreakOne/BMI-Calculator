

import Foundation
import UIKit
//CalculatorBrain model
struct CalculatorBrain {
    //Creates an instance of BMI data model
    var userBMI: BMI?
    

    //Method that receives the weight and height of the user and calculates the bmi.
    //Then uses the resulted bmi to set an advice and color code based on ranges
    //Stores all the data in the bmi variable instanciated from BMI
    mutating func calculateBMI(weight: Float, height: Float){
        
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case ..<18.5:
            userBMI = BMI(v: bmiValue, a: "Eat more pies!", c: #colorLiteral(red: 0.9431524873, green: 0.9182425737, blue: 0, alpha: 1))
        case ...24.9:
            userBMI = BMI(v: bmiValue, a: "Fit as a fiddle!", c: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        case 25.0...:
            userBMI = BMI(v: bmiValue, a: "Eat less pies!", c: #colorLiteral(red: 0.9532052875, green: 0, blue: 0, alpha: 1))
        default:
            userBMI = BMI(v: 0.0, a: "", c: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))
        }
    }
    //Method to pass the calculated bmi as a formatted string
    func getBMIValue() -> String{
        return String(format: "%.1f", userBMI!.value)
    }
    
    //Method to pass the bmi advice
    func getAdvice() -> String{
        return userBMI!.advice
    }
    
    //Method to pass the bmi color coding
    func getColor() -> UIColor {
        return userBMI!.color
    }
}
