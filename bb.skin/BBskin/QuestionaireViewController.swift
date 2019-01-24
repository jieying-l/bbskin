

import UIKit

class QuestionaireViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func getSkinButton(_ sender: Any) {
        let skinViewController =
            self.storyboard?.instantiateViewController(withIdentifier: "SkinViewController") as! SkinViewController
        self.present(skinViewController, animated: true)
    }
    

}
