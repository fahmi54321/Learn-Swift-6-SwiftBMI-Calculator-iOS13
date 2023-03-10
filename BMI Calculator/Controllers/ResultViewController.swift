/**
 Todo Buat controller dan menghubungkan
 1. New File > Cocoa Touch Class > Subclass (UiViewController) > Group (Controller)
 2. Attribute Custom Class > Class (Your name controller)

 */

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advinceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue

       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

}
