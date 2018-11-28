//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by MinPhone on 11/28/18.
//  Copyright © 2018 MinPhone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    private func newBallImage(){
        let randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

