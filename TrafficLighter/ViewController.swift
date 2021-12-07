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
        redLight.layer.cornerRadius = 55
//получить скругление через деление высоты
        yellowLight.layer.cornerRadius = 55
        greenLight.layer.cornerRadius = 55
        startButton.titleLabel?.adjustsFontSizeToFitWidth = true
//Видимо опциональное потому что тайтл может быть пустым
//не знаю как правильно с ним работать но хотелось чтобы
//надпись влезала на всех экранах
        switchLightsOff()
    }

    
    func getTrafficLightIsOn() -> String {
        var result = "off"
        
        if redLight.alpha == 1 {
            result = "red"
        } else if yellowLight.alpha == 1 {
            result = "yellow"
        } else if greenLight.alpha == 1 {
            result = "green"
        }
        return result
    }

    
    func switchLightsOff() {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
 
    
    
    @IBAction func startPressed() {
        let state = getTrafficLightIsOn()

        startButton.setTitle("NEXT", for: .normal)
        
        switch state {
        case "red":
            switchLightsOff()
            yellowLight.alpha = 1
        case "yellow":
            switchLightsOff()
            greenLight.alpha = 1
        default:
            switchLightsOff()
            redLight.alpha = 1
        }
    }
}
