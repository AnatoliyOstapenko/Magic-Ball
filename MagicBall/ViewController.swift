//
//  ViewController.swift
//  MagicBall
//
//  Created by MacBook on 28.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallView: UIImageView!
    @IBOutlet weak var suggestLabel: UILabel!
    var ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    var suggestion = ["Now, you have my answer", "It's your day", "Don't give up!", "I always tell the truth" , "Hmm, you are luky"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        suggestLabel.adjustsFontSizeToFitWidth = true
        suggestLabel.minimumScaleFactor = 0.5
        suggestLabel.text = "Push the button"
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        magicBallView.image = ballArray.randomElement()
        suggestLabel.text = suggestion.randomElement()
        //let unwrappedSuggestion = suggestion.randomElement()
    }
    
}

