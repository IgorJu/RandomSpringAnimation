//
//  SpringModel.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import Foundation

struct Animation {
    var preset: String
    var curve: String
    
    var force: CGFloat
    var duration: CGFloat
    
    static func getRandomValues() -> Animation {
        let animations = DataStoreRandomValues.shared
        let animation = Animation(
            preset: animations.presets.randomElement()?.rawValue ?? "",
            curve: animations.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5...1.5),
            duration: Double.random(in: 0.5...1.5))
        return animation
    }
    
}






