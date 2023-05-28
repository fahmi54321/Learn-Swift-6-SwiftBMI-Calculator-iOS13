/**
 Todo Buat controller dan menghubungkan
 1. New File > Cocoa Touch Class > Subclass (UiViewController) > Group (Controller)
 2. Attribute Custom Class > Class (Your name controller)

 */

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advinceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        advinceLabel.text = advice
        view.backgroundColor = color

       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

}
