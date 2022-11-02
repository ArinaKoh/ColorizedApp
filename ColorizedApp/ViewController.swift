//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Arina on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - IB Outlets
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var firstValueLabel: UILabel!
    @IBOutlet var secondValueLabel: UILabel!
    @IBOutlet var thirdValueLabel: UILabel!
    
    @IBOutlet var firstSlider: UISlider!
    @IBOutlet var secondSlider: UISlider!
    @IBOutlet var thirdSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        
        changeViewColor()
        
        setupValue(for: firstValueLabel, secondValueLabel, thirdValueLabel)
        
    }
    
//MARK: - IB Actions
    
    @IBAction func rgbSliderChanged(_ sender: UISlider) {
        changeViewColor()
        
        switch sender {
        case firstSlider:
            firstValueLabel.text = string(from: firstSlider)
        case secondSlider:
            secondValueLabel.text = string(from:  secondSlider)
        default:
            thirdValueLabel.text = string(from: thirdSlider)
        }
    }
    
//MARK: - Methods
    private func changeViewColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: 1)
    }
    
    private func  setupValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case firstValueLabel:
                firstValueLabel.text = string(from: firstSlider)
            case secondValueLabel:
               secondValueLabel.text = string(from: secondSlider)
            default:
                thirdValueLabel.text = string(from: thirdSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

