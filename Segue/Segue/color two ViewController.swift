//
//  color two ViewController.swift
//  Segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol color_two_ViewControllerDelegate{
    func myVCDidfinish(controller: color_two_ViewController,text:String)
}

class color_two_ViewController: UIViewController {
    
    var delegate:color_two_ViewControllerDelegate? = nil
    
    var colorString = ""

    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
        
        if (sender.titleLabel!.text! == "Red"){
            colorLabel.backgroundColor = UIColor.redColor()
            view.backgroundColor = UIColor.redColor()
        }
        else if (sender.titleLabel!.text! == "Green"){
            colorLabel.backgroundColor = UIColor.greenColor()
            view.backgroundColor = UIColor.greenColor()
        }
        else if (sender.titleLabel!.text! == "Blue"){
            colorLabel.backgroundColor = UIColor.blueColor()
            view.backgroundColor = UIColor.blueColor()
        }
    }
   
   
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil)  {
        delegate!.myVCDidfinish(self, text: colorLabel!.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
