//
//  ViewController.swift
//  FirstNewApp
//
//  Created by 천승현 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
    }


    @IBAction func sliderChanged(_ sender: UISlider) {
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
    }
    
}

