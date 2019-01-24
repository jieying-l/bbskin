

import UIKit

class SkinViewController: UIViewController{
    

    @IBOutlet weak var skintypeLabel: UILabel!
    var skintypeText: String = "Normal"
    
    
    @IBAction func ExploreButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skintypeLabel.text = skintypeText
        
    }
    


}


    
    

