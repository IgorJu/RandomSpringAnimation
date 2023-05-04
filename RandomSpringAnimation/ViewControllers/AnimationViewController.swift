//
//  ViewController.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runAnimationButton: UIButton!
    
    private var animation = Animation.getRandomValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }
    
    @IBAction func runButtonTapped(_ sender: UIButton) {
        getAnimation()
        descriptionLabel.text = animation.description
        
        animation = Animation.getRandomValues()
        sender.setTitle(animation.preset, for: .normal)
    }
    
    private func getAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.force = animation.force
        springAnimationView.animate()
    }
}
    



