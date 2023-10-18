//

import UIKit

class CalculateViewController: UIViewController {
    
    //Declares IBOutlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    //Creates an instance of CalculatorBrain
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //Show value as user moves the sliders
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2f", sender.value) + " Kg"
    }
    
    //Pass the height and weight to the model and calculate.
    @IBAction func calculateButton(_ sender: UIButton) {
        //Get values from the sliders
        let height = heightSlider.value
        let weight = weightSlider.value
        //Calculate the bmi
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        //Goes to ResultViewController via a segue
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    //Prepares to perform the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //If the existing segue matches, passes the parameters to ResultViewController
        if segue.identifier == "goToResult" {
            //sets segue destination
            let destinationViewController = segue.destination as! ResultViewController
            //Passes values to ResultViewController
            destinationViewController.bmiResult = calculatorBrain.getBMIValue()
            destinationViewController.advice = calculatorBrain.getAdvice()
            destinationViewController.color = calculatorBrain.getColor()
        }
    }
}

