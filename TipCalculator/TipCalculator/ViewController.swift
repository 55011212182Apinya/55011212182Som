//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    @IBOutlet var totalTextField :UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var tableview: UITableView!
    
    
    let tipCalc = TipCalculatorModel(total: 33.25,taxPct:0.01)
    var possibleTips = Dictionary<Int,(TipAmt:Double,total:Double)>()
    var sortedKeys:[Int]=[]
    
    func tableView(tableView: UITableView!, number0fRowsInSection section: Int)->Int {
        return sortedKeys.count
        
    }
    func number0fRowsInSectionIntTableView(tableView: UITableView!)->Int{
        return 1
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.TipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%:"
        cell.detailTextLabel!.text = String(format:"Tip:$%0.2f,Total: $%0.2f",tipAmt,total)
        return cell
        
    }

    @IBAction func calculateTapped(sender : AnyObject){
        
       tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for (tipPct, tipValue) in possibleTips{
          
            results += "\(tipPct)%: \(tipValue)\n"
        
        }
          tableview.reloadData()
    }
    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCalc.taxPct = Double(taxPctSlider.value)/100.0
        refreshUI()    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextField.resignFirstResponder()
    }
    
  func refreshUI() {
  
    totalTextField.text = String(format: "%0.2f", tipCalc.total)
  
    taxPctSlider.value = Float(tipCalc.taxPct)*100.0
   
    taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
     tableview.reloadData()
    }
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
            
            refreshUI()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }


}

