//
//  ViewController.swift
//  random1
//
//  Created by Student on 9/24/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    
    
    @IBOutlet weak var reset: UIButton!
    
    var a=0,b=0,c=0
    
    @IBAction func countone(sender: AnyObject) {
        a=a+1
        lb1.text=String(a)
        
    }
    
    @IBAction func counttwo(sender: AnyObject) {
        b=b+1
        lb2.text=String(b)
    }
    
    @IBAction func countthree(sender: AnyObject) {
        
        c=c+1
        lb3.text=String(c)
    }
    @IBAction func reset(sender: AnyObject) {
        a=0
        b=0
        c=0
        lb1.text=String(a)
        lb2.text=String(b)
        lb3.text=String(c)
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

