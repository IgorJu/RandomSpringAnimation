//
//  ViewController.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    @IBOutlet var runAnimationButton: UIButton!
    @IBOutlet var movingView: UIView!
    
    private let animation = ViewModel.getDefaultValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
    }


}

