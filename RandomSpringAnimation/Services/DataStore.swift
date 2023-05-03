//
//  DataStore.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import Foundation
import SpringAnimation

final class DataStoreRandomValues {
    
    static let shared = DataStoreRandomValues()
    
    let animation = ViewModel(
        preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
        curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
        force: Double.random(in: 0.5...1.5),
        duration: Double.random(in: 0.1...1.0)
    )
    
    private init() {}
}
    
