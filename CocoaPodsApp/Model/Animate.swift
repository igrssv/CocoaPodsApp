//
//  Animate.swift
//  CocoaPodsApp
//
//  Created by Игорь Сысоев on 25.09.2021.
//

struct Animate {
    var present: String
    var curve: String
    var force: Int
    var duration: Float
    var dealy: Float
    
    static func getAnimated() -> Animate {
        let present = DataManager.shared.present
        let curve = DataManager.shared.curve
        
        
        let animated = Animate(present: "\(present[Int.random(in: 0..<present.count)])",
                               curve: "\(curve[Int.random(in: 0..<present.count)])",
                               force: 0,
                               duration: Float.random(in: 0.3..<1.2),
                               dealy: Float.random(in: 0.3..<1.2))
        
        return animated
    }
}
