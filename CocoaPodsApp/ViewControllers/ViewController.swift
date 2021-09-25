//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Игорь Сысоев on 24.09.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springViewAnimated: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func runAnimation(_ sender: SpringButton) {
        springViewAnimated.animation = "slideLeft"
        springViewAnimated.curve = "easeIn"
        springViewAnimated.duration = 1
        springViewAnimated.animate()
    }
    
}

