//
//  ViewController.swift
//  MosolovHW4
//
//  Created by Александр Мосолов on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorDisplayView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    

    @IBAction func changeRedColor() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        changeColorOnDisplay()
    }
    
    @IBAction func changeGreenColor() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        changeColorOnDisplay()
        
    }
    @IBAction func changeBlueColor() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        changeColorOnDisplay()
    }
    
    private func changeColorOnDisplay() {
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
}

