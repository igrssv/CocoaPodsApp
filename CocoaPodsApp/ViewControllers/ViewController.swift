//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Игорь Сысоев on 24.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    var animate = Animate.getAnimated()

    @IBOutlet weak var springViewAnimated: SpringView!
    

    @IBOutlet weak var presentLabel: UILabel!
    
    @IBOutlet weak var curveLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var delayLabel: UILabel!
    
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        springViewAnimated.animation = animate.present
        springViewAnimated.curve = animate.curve
        springViewAnimated.duration =  CGFloat(animate.duration)
        springViewAnimated.animate()
        
        animate = Animate.getAnimated()
        sender.setTitle("Run " + animate.present, for: .normal)
        
        
        
        
        
        
    }
    
}

