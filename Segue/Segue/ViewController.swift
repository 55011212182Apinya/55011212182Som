//
//  ViewController.swift
//  Segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,color_two_ViewControllerDelegate {
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func myVCDidfinish(controller: color_two_ViewController, text: String) {
        colorLabel.text = "Co: "+ text
        controller.navigationController?.popToRootViewControllerAnimated(true)
    }
}
   


