//
//  ViewController.swift
//  Dicee
//
//  Created by Tun Lin Thu on 2019/08/26.
//  Copyright © 2019 Tun Lin Thu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        diceImageView1.image = UIImage(named: "dice\(Int.random(in: 1...6))")
        diceImageView2.image = UIImage(named: "dice\(Int.random(in: 1...6))")
    }

}

