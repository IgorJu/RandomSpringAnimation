//
//  ViewController.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runAnimationButton: UIButton!
    
    private var animation = Animation.getRandomValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }
    
    @IBAction func runButtonTapped(_ sender: UIButton) {
        getAnimation()
        setupLabels()
        animation = Animation.getRandomValues()
        sender.setTitle(animation.preset, for: .normal)
    }
    
    private func setupLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
    }
    
    private func getAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.force = animation.force
        springAnimationView.animate()
    }
}
    



