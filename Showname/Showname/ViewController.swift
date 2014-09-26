//
//  ViewController.swift
//  Showname
//
//  Created by Student on 9/26/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate{
    
    
    
    
    @IBOutlet weak var textname: UITextField!
    
    @IBOutlet weak var butOK: UIButton!
    
    @IBOutlet weak var show: UITableView!
    
    @IBAction func intputtable(sender: AnyObject) {

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.Identifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

