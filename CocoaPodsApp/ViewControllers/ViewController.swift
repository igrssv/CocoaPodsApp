//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Игорь Сысоев on 24.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    private var animate = Animate.getAnimated()

    @IBOutlet weak var springViewAnimated: SpringView!

    @IBOutlet weak var presentLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLabelText()
        
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        initViewAnimation()
        
        animate = Animate.getAnimated()
        sender.setTitle("Run " + animate.present, for: .normal)
    }
}


extension ViewController {
    private func initViewAnimation() {
        springViewAnimated.animation = animate.present
        springViewAnimated.curve = animate.curve
        springViewAnimated.duration = CGFloat(animate.duration)
        springViewAnimated.delay = CGFloat(animate.dealy)
        springViewAnimated.animate()
        initLabelAnimation()
        
        
    }
    private func initLabelAnimation() {
        presentLabel.animation = animate.present
        presentLabel.curve = animate.curve
        presentLabel.duration = CGFloat(animate.duration)
        presentLabel.delay = CGFloat(animate.dealy)
        presentLabel.animate()
        
        curveLabel.animation = animate.present
        curveLabel.curve = animate.curve
        curveLabel.duration = CGFloat(animate.duration)
        curveLabel.delay = CGFloat(animate.dealy)
        curveLabel.animate()
        
        durationLabel.animation = animate.present
        durationLabel.curve = animate.curve
        durationLabel.duration = CGFloat(animate.duration)
        durationLabel.delay = CGFloat(animate.dealy)
        durationLabel.animate()
        
        delayLabel.animation = animate.present
        delayLabel.curve = animate.curve
        delayLabel.duration = CGFloat(animate.duration)
        delayLabel.delay = CGFloat(animate.dealy)
        delayLabel.animate()
        initLabelText()

    }
    
    private func initLabelText() {
        presentLabel.text = "present: " + animate.present
        curveLabel.text = "curve: " + animate.curve
        durationLabel.text = "duration: \(animate.duration)"
        delayLabel.text = "deley: \(animate.dealy)"
        
    }
}
