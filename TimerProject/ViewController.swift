//
//  ViewController.swift
//  TimerProject
//
//  Created by Atilla Çıtırık on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTime: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        counter = 10
        lblTime.text = "time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunc), userInfo: nil, repeats: true)

    }

    @objc func timerfunc(){
        lblTime.text = "Time: \(counter)"
        counter -= 1
        if counter == 0{
            timer.invalidate()
            lblTime.text = "Time is over"
        }
    }
    
    @IBAction func btnClikced(_ sender: Any) {
        print("button clicked")
    }
    
}

