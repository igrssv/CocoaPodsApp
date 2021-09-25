//
//  DataManager.swift
//  CocoaPodsApp
//
//  Created by Игорь Сысоев on 25.09.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let present = Spring.AnimationPreset.allCases
    let curve = Spring.AnimationCurve.allCases
    
    private init() {}
    
    
    
}
