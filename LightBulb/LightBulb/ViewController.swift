//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb.backgroundColor = UIColor.redColor()
    }

    func changeColor(to color: UIColor) {
        switch color {
        case UIColor.redColor():
            lightBulb.backgroundColor = UIColor.redColor()
        case UIColor.blueColor():
            lightBulb.backgroundColor = UIColor.blueColor()
        case UIColor.greenColor():
            lightBulb.backgroundColor = UIColor.greenColor()
        case UIColor.yellowColor():
            lightBulb.backgroundColor = UIColor.yellowColor()
        default:
            break
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Change background color when segmented control changes
        switch sender.selectedSegmentIndex {
        case 0:
            changeColor(to: UIColor.redColor())
        case 1:
            changeColor(to: UIColor.blueColor())
        case 2:
            changeColor(to: UIColor.greenColor())
        case 3:
            changeColor(to: UIColor.yellowColor())
        default:
            break
        }
    }
}
