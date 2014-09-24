//
//  ViewController.swift
//  Random
//
//  Created by Student on 9/24/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var Three: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var Buttonall: UIButton!
    
    @IBAction func numcount(sender: AnyObject) {
        
        var a=0,b=0,c=0
        a=a+1
        label1.text=String(a)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

