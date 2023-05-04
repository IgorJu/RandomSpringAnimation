//
//  DataStore.swift
//  RandomSpringAnimation
//
//  Created by Igor on 03.05.2023.
//

import Foundation
import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()

    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
    
