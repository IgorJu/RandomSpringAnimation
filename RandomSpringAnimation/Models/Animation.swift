//
//  SpringModel.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    var description: String {
        """
Preset: \(preset)
Curve: \(curve)
Force: \(String(format: "%.2f", force))
Duration: \(String(format: "%.2f",duration))
"""
    }
    
    static func getRandomValues() -> Animation {
        let animations = DataStore.shared
        let animation = Animation(
            preset: animations.presets.randomElement()?.rawValue ?? "",
            curve: animations.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5...1.5),
            duration: Double.random(in: 0.5...1.5)
        )
        return animation
    }
    
}






