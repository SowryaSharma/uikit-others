import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    let defaults = UserDefaults.standard

    @IBOutlet weak var click: UIButton!
    @IBAction func clickPressed(_sender:UIButton){
        defaults.set(20, forKey: "weight")
        myLabel.text = "\(UserDefaults.standard.integer(forKey: "weight"))"
        print(UserDefaults.standard.integer(forKey: "weight"))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaults.set(15, forKey: "weight")
        myLabel.text = "\(UserDefaults.standard.integer(forKey: "weight"))"
    }

}
