//

import UIKit
//BMI data model
struct BMI {
    var value: Float
    let advice: String
    let color: UIColor
    
    init(v: Float, a: String, c: UIColor) {
        value = v
        advice = a
        color = c
    }
}
