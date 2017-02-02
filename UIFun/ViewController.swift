//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.red
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {

        let color = firstColorSegmentedControl.selectedSegmentIndex + secondColorSegmentedControl.selectedSegmentIndex
        
        switch color {
        case 0:
            paintBucket.backgroundColor = UIColor.red
        case 1:
            paintBucket.backgroundColor = UIColor.orange
        case 2:
            paintBucket.backgroundColor = UIColor.yellow
        case 3:
            paintBucket.backgroundColor = UIColor.green
        case 4:
            paintBucket.backgroundColor = UIColor.blue
        default:
            paintBucket.backgroundColor = UIColor.red
        }
    }

}
