//
//  ViewController.swift
//  WarCardGame
//
//  Created by 陳飛 on 17/8/20.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Data
    var leftScore: Int = 0
    var rightScore: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
        
        leftScoreLabel.text = String(0)
        rightScoreLabel.text = String(0)
    }

    
    // MARK: Actions
    @IBAction func dealTapped(_ sender: Any) {
//        print("Button tapped!")
        
        let leftNumber = Int.random(in: 2...14)
//        print(" Left number is \(leftNumber).")
        
        let rightNumber = Int.random(in: 2..<15)
//        print("Right number is \(rightNumber).")
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Business Logic
        if leftNumber < rightNumber {
            // right wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        else if leftNumber > rightNumber {
            // left wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else {
            // tie
            
        }
    }
    
    // MARK: Private Methods
}

