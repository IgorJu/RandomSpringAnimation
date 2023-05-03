//
//  SpringModel.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import Foundation

struct ViewModel {
    var preset: String
    var curve: String
    
    var force: Double
    var duration: Double
    
    static func getDefaultValues() -> ViewModel {
        let animation = DataStoreRandomValues.shared.animation
        let newAnimation = ViewModel(
            preset: animation.preset,
            curve: animation.curve,
            force: animation.force,
            duration: animation.duration
        )
        return newAnimation
    }
}






