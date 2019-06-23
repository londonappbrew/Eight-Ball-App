//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Ivan Caldwell on 6/22/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomInt: Int = 0
    @IBOutlet var eightBallImage: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        shake()
    }
    
    @IBAction func askButtonTapped(_ sender: Any) {
        shake()
    }
    
    func shake(){
        let previous: Int = randomInt
        randomInt = Int.random(in: 1...5)
        while randomInt == previous {
            randomInt = Int.random(in: 1...5)
        }
        eightBallImage.image = UIImage(named: "ball\(randomInt)")
    }
    
    // Enable shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            shake()
        }
    }
}

