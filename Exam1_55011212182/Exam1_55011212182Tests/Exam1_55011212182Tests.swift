//
//  Exam1_55011212182Tests.swift
//  Exam1_55011212182Tests
//
//  Created by Student on 10/10/2557 BE.
//  Copyright (c) 2557 Student. All rights reserved.
//

import Foundation

class Exam1_55011212182Tests{
    
    var total: Double
    var taxPct: Double
    var subtotal: Double
        
        {
        get{
            return total/(taxPct+1)
            
        }
    }
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
    }
    
    
    func    calcTipWithTipPct(tipPct:Double) -> (TipAmt:Double,total:Double){
        
        let tipAmt = subtotal * tipPct
        let finalTotal = total*tipAmt
        return (tipAmt,finalTotal)
    }
    
    
    func    returnPossibleTips() -> [Int:(TipAmt:Double,total:Double)]{
        
        let possibleTipsInferred = [0.03,0.05,0.1]
        let possibleTipsExplicit:[Double] = [0.03,0.05,0.1]
        
        var retval = Dictionary< Int, (TipAmt:Double,total:Double)>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*400)
            
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

