import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topFlagButton: UIButton!
    @IBOutlet weak var bottomFlagButton: UIButton!
    @IBOutlet weak var centerFlagButton: UIButton!
    
    var score = 0
    var countries = [String]()
    var correctAnswer = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        topFlagButton.layer.borderWidth = 1
        bottomFlagButton.layer.borderWidth = 1
        centerFlagButton.layer.borderWidth = 1


        topFlagButton.layer.borderColor = UIColor.lightGray.cgColor
        bottomFlagButton.layer.borderColor = UIColor.lightGray.cgColor
        centerFlagButton.layer.borderColor = UIColor.lightGray.cgColor

    }
    override func viewWillAppear(_ animated: Bool) {
        askQuestions()
    }
    

    func askQuestions(action: UIAlertAction! = nil)
    {

        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        correctAnswer = Int.random(in: 0..<3)

        
        topFlagButton.setImage(UIImage(named: countries[0]), for: .normal)
        centerFlagButton.setImage(UIImage(named: countries[1]), for: .normal)
        bottomFlagButton.setImage(UIImage(named: countries[2]), for: .normal)
        
        

        self.title = countries[correctAnswer].uppercased()
        
    }
    
    
    @IBAction func buttonTapped(sender: UIButton)
    {
        print(sender.tag)
        if sender.tag == correctAnswer
        {
            score+=1
            self.title = "correct"
        }
        else
        {
            score-=1
            self.title = "incorrect"
        }
        if( score < 10){
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler:askQuestions))
        present(ac, animated: true, completion: nil)
        }
        else{
            let aler = UIAlertController(title: "Congratulations!", message: "You won the game", preferredStyle: .alert)
            aler.addAction(UIAlertAction(title: "continue", style: .default, handler: askQuestions))
            present(aler, animated: true, completion: nil)
        }
    }
}

