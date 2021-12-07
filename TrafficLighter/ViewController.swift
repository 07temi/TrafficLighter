//
//  ViewController.swift
//  TrafficLighter
//
//  Created by Артем Черненко on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func startPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        
    }
    
}

