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

    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
    
