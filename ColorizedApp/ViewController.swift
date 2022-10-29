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
        setupSliders()
        setupLabels()
        
    }
    
//MARK: - IB Actions
    
    @IBAction func rgbSliderChanged(_ sender: UISlider) {
        changeViewColor()
        firstValueLabel.text = firstSlider.value.formatted()
        secondValueLabel.text = secondSlider.value.formatted()
        thirdValueLabel.text = thirdSlider.value.formatted()
    }
    
//MARK: - Methods
    func changeViewColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: 1)
    }
    
    private func setupSliders() {
        firstSlider.minimumValue = 0
        secondSlider.minimumValue = 0
        thirdSlider.minimumValue = 0
        firstSlider.maximumValue = 1
        secondSlider.maximumValue = 1
        thirdSlider.maximumValue = 1
    }
    private func setupLabels() {
        firstValueLabel.text = firstSlider.value.formatted()
        secondValueLabel.text = secondSlider.value.formatted()
        thirdValueLabel.text = thirdSlider.value.formatted()
    }


}

