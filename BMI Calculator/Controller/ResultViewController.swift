//

import UIKit

class ResultViewController: UIViewController {

    //Declares variables, these values will be set via the segue
    var bmiResult: String?
    var advice: String?
    var color: UIColor?
    //Declares IBOutlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the labels and background color with the results passed by the CalculateViewController that were calculated by the CalculatorBrain model
        bmiLabel.text = bmiResult
        adviceLabel.text = advice
        //self is optional
        self.view.backgroundColor = color
        
        // Do any additional setup after loading the view.
    }
    //Dismiss current ViewController back to the CalculateViewController when user presses the button
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
