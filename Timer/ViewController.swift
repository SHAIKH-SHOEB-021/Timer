//
//  ViewController.swift
//  Timer
//
//  Created by shoeb on 18/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLBL: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        counterLBL.text = "Timer : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunction), userInfo: nil, repeats: true)
    }
    @objc func timeFunction(){
        counterLBL.text = "Timer : \(counter)"
        counter -= 1
        if counter == 0{
            timer.invalidate()
            counterLBL.text = "Time Over"
        }
    }

    @IBAction func startBTN(_ sender: Any) {
        print("Hello World")
        
    }
}

