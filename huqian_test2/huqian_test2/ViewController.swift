//
//  ViewController.swift
//  huqian_test2
//
//  Created by Qian Huai on 2022/7/27.
//

import UIKit

class ViewController: UIViewController {

    var num:Int = 0
    var doublenum:Double = 0
    var step:Int = 1
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!//optional
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    @IBAction func clickButton(_ sender: UIButton) {
        num += step
        doublenum += Double(step)
        if num >= 10 || num <= 0 {
            step *= -1
        }
        
        updateUI()
    }
    func updateUI(){
        label.text = "Int : \(num)\nDouble :\(doublenum)"
        let title = step > 0 ? "+\(step)" : "\(step)"
        button.setTitle(title, for: .normal)
    }
}

