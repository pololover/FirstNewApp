//
//  ViewController.swift
//  FirstNewApp
//
//  Created by 천승현 on 2022/07/18.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        slider.value = 0.5
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds)초"
        number = seconds
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true)
        number = 0
        timer = nil
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerAction() {
        if number > 0 {
            number -= 1
            slider.value = Float(number) / Float(60)
            mainLabel.text = "\(number)초"
        } else {
            mainLabel.text = "초를 선택하세요"
            slider.setValue(0.5, animated: true)
            timer?.invalidate()
            AudioServicesPlayAlertSound(SystemSoundID(1322))
        }
    }
    
}

